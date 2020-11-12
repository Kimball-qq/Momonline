from django.db import models
from datetime import datetime
from apps.users.models import UserProfile
from apps.course.models import Course
# Create your models here.

# 用户咨询
class UserAsk(models.Model):
    name = models.CharField(max_length=20,verbose_name="姓名")
    mobile = models.CharField(max_length=11,verbose_name="手机号")
    course_name = models.CharField(max_length=50,verbose_name="课程名")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    class Meta:
        verbose_name = "用户咨询"
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.name


# 用户消息
class UserMessage(models.Model):
    user = models.IntegerField(default=0,verbose_name='接受用户')
    message = models.CharField(max_length=500,verbose_name='消息内容')
    has_read = models.BooleanField(default=False,verbose_name='是否已读')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        verbose_name = '用户消息'
        verbose_name_plural = verbose_name


# 课程评论
class CourseComments(models.Model):
    user = models.ForeignKey(UserProfile,verbose_name='用户',on_delete=models.CASCADE)
    course = models.ForeignKey(Course,verbose_name='课程',on_delete=models.CASCADE)
    comments = models.CharField(max_length=200,verbose_name='评论')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        verbose_name = '课程评论'
        verbose_name_plural = verbose_name


# 用户课程
class UserCourse(models.Model):
    user = models.ForeignKey(UserProfile,on_delete=models.CASCADE,verbose_name="用户")
    course = models.ForeignKey(Course,on_delete=models.CASCADE,verbose_name="课程")
    add_time = models.DateTimeField(default=datetime.now,verbose_name="添加时间")

    class Meta:
        verbose_name = "用户课程"
        verbose_name_plural = verbose_name


# 用户收藏
class UserFavorite(models.Model):
    FAV_TYPE = (
        (1,"课程"),
        (2,"课程机构"),
        (3,"讲师")
    )

    user = models.ForeignKey(UserProfile,on_delete=models.CASCADE,verbose_name="用户")
    fav_id = models.IntegerField(default=0,verbose_name="数据ID")
    fav_type = models.IntegerField(verbose_name='收藏类型', choices=FAV_TYPE, default=1)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)

    class Meta:
        verbose_name = '用户收藏'
        verbose_name_plural = verbose_name




















































