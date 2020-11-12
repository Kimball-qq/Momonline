from django.db import models
from apps.organization.models import CourseOrg,Teacher
from DjangoUeditor.models import UEditorField
from datetime import datetime
# Create your models here.

class Course(models.Model):
    DEGREE_CHOICES = (
        ("cj","初级"),
        ("zj","中级"),
        ("gj","高级")
    )
    name = models.CharField(max_length=50,verbose_name="课程名")
    desc = models.CharField(max_length=300,verbose_name="课程描述")
    detail = UEditorField(verbose_name=u'课程详情', width=600, height=300, imagePath="courses/ueditor/",
                          filePath="courses/ueditor/", default='')
    degree = models.CharField(max_length=2,choices=DEGREE_CHOICES,verbose_name="难度")
    learn_time =models.IntegerField(default=0,verbose_name="学习时长（分钟数）")
    students = models.IntegerField(default=0,verbose_name="学习人数")
    fav_nums = models.IntegerField(default=0,verbose_name="收藏人数")
    tag = models.CharField('课程标签', default='', max_length=10)
    is_banner = models.BooleanField(default=False,verbose_name='是否轮播')
    image = models.ImageField(upload_to="courses/%Y/%m",max_length=100,verbose_name="封面图")
    click_nums = models.IntegerField(default=0,verbose_name="点击量")
    category = models.CharField(max_length=20, default="",verbose_name="课程类别")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")
    course_org = models.ForeignKey(CourseOrg, on_delete=models.CASCADE, verbose_name="所属机构", null=True, blank=True)
    teacher = models.ForeignKey(Teacher, verbose_name='讲师', null=True, blank=True, on_delete=models.CASCADE)
    youneed_know = models.CharField('课程须知', max_length=300, default='')
    teacher_tell = models.CharField('老师告诉你', max_length=300, default='')


    class Meta:
        verbose_name = "课程"
        verbose_name_plural = verbose_name

    # 获取课程的章节数
    def get_zj_nums(self):
        return self.lession_set.all().count()

    # 获取这门课程的学习用户
    def get_learn_users(self):
        return self.usercourse_set.all()[:5]

    # 获取课程的章节
    def get_course_lession(self):
        return self.lession_set.all()

    def go_to(self):
        from django.utils.safestring import mark_safe
        #mark_safe后就不会转义
        return mark_safe("<a href='https://home.cnblogs.com/u/derek1184405959/'>跳转</a>")

    def __str__(self):
        return self.name


class Lession(models.Model):
    course = models.ForeignKey(Course,on_delete=models.CASCADE,verbose_name="课程")
    name = models.CharField(max_length=100,verbose_name="章节名")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    class Meta:
        verbose_name = "章节"
        verbose_name_plural = verbose_name

    # 获取章节所有视频
    def get_lession_video(self):
        return self.video_set.all()

    def __str__(self):
        return "《{0}课程的章节》{1}".format(self.course,self.name)


# 章节视频
class Video(models.Model):
    lession = models.ForeignKey(Lession,on_delete=models.CASCADE,verbose_name="章节")
    name = models.CharField(max_length=100,verbose_name="视频名称")
    learn_times = models.IntegerField(default=0,verbose_name="学习时长(分钟数)")
    url = models.CharField(default='', max_length=200,verbose_name='访问地址')
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    class Meta:
        verbose_name = "视频"
        verbose_name_plural = verbose_name


class CourseResource(models.Model):
    course = models.ForeignKey(Course,on_delete=models.CASCADE,verbose_name="课程")
    name = models.CharField(max_length=100,verbose_name="名称")
    download = models.FileField(max_length=100,upload_to="course/resource/%Y/%m",verbose_name="资源文件")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    class Meta:
        verbose_name = "课程资源"
        verbose_name_plural = verbose_name





















































