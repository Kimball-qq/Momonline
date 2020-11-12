from django.db import models
from datetime import datetime
from DjangoUeditor.models import UEditorField

# Create your models here.
# 城市
class CityDict(models.Model):
    name = models.CharField(max_length=20, verbose_name="城市")
    desc = UEditorField(verbose_name="描述")
    add_time = models.DateTimeField(default=datetime.now, verbose_name="添加时间")

    class Meta:
        verbose_name = "城市"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# 培训机构
class CourseOrg(models.Model):
    ORG_CHOICES = (
        ("pxjg",u"培训机构"),
        ("gx",u"高校"),
        ("gr",u"个人")
    )
    name = models.CharField(max_length=50,verbose_name="机构名称")
    desc = UEditorField(verbose_name="机构描述")
    category = models.CharField(max_length=30,choices=ORG_CHOICES,default='pxjg',verbose_name=u"机构类别")
    click_nums = models.IntegerField(default=0,verbose_name="点击量")
    fav_nums = models.IntegerField(default=0,verbose_name="收藏数")
    students = models.IntegerField("学习人数", default=0)
    course_nums = models.IntegerField("课程数", default=0)
    tag = models.CharField(max_length=10, default='全国知名',verbose_name='机构标签')
    image = models.ImageField(upload_to="org/%Y%m",max_length=100,verbose_name="封面图")
    address = models.CharField(max_length=150,verbose_name="机构地址")
    city = models.ForeignKey(CityDict,on_delete=models.CASCADE,verbose_name="所在城市")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    class Meta:
        verbose_name = "课程机构"
        verbose_name_plural = verbose_name

    # 获取机构的教师数
    def get_teacher_nums(self):
        return self.teacher_set.all().count()

    # 获取机构的教师数
    def get_courses(self):
        return self.course_set.all()[:2]

    def __str__(self):
        return self.name


class Teacher(models.Model):
    org = models.ForeignKey(CourseOrg,on_delete=models.CASCADE,verbose_name="所属机构")
    name = models.CharField(max_length=50,verbose_name="教师名称")
    work_years = models.IntegerField(default=0,verbose_name="工作年限")
    work_position = models.CharField(max_length=50,verbose_name='公司职位',default='')
    work_company = models.CharField(max_length=50,verbose_name="就职公司")
    points = models.TextField(max_length=200,verbose_name="教学特点")
    click_nums = models.IntegerField(default=0,verbose_name="点击量")
    fav_nums = models.IntegerField(default=0,verbose_name="收藏数")
    image = models.ImageField(default='',upload_to="teacher/%Y/%m",verbose_name="头像",max_length=100)
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    class Meta:
        verbose_name = "讲师"
        verbose_name_plural = verbose_name

    def get_course_nums(self):
        return self.course_set.all().count()

    def __str__(self):
        return  "[{0}]的教师：{1}".format(self.org,self.name)


























































































