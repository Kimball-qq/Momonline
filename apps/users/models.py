from django.db import models
from datetime import datetime
from django.contrib.auth.models import AbstractUser
# Create your models here.

from DjangoUeditor.models import UEditorField

# class UserProfiles(AbstractUser):
class UserProfile(AbstractUser):

    GENDER_CHOICES = (
        ('man','男'),
        ('woman','女')
    )

    nick_name = models.CharField(max_length=50,default='',verbose_name='昵称')
    birthday = models.DateField(null=True,blank=True,verbose_name='生日')
    gender = models.CharField(max_length=10,choices=GENDER_CHOICES,default='man',verbose_name='性别')
    address = models.CharField(max_length=100,default='',verbose_name='地址')
    image = models.ImageField(upload_to='image/%Y%m',default='image/default.png',max_length=100)
    mobile = models.CharField(max_length=11,null=True,blank=True,verbose_name='手机号')

    class Mete:
        verbose_name = '用户信息'
        verbose_name_plural = verbose_name

    def __str__(self):
        return self.username


class EmailVerifyRecord(models.Model):
    SEND_CHOICES = (
        ('register','注册'),
        ('forget','找回密码'),
        ('update_email','修改邮箱')
    )

    code = models.CharField(verbose_name='验证码',max_length=20)
    email = models.EmailField(verbose_name='邮箱',max_length=50)
    send_type = models.CharField(choices=SEND_CHOICES,max_length=10)
    send_time = models.DateTimeField(default=datetime.now)

    class Meta:
        verbose_name = '邮箱验证码'
        verbose_name_plural = verbose_name


class Banner(models.Model):
    title = models.CharField(max_length=100,verbose_name='标题')
    image = models.ImageField(upload_to='banner/%Y%m',max_length=100,verbose_name='轮播图')
    url = models.URLField(max_length=200,verbose_name='访问地址')
    index = models.IntegerField(default=100,verbose_name='顺序')
    add_time = models.DateTimeField(default=datetime.now,verbose_name='添加时间')

    class Meta:
        verbose_name = '轮播图'
        verbose_name_plural = verbose_name















































