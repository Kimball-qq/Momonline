import xadmin

from django.urls import path,include,re_path
from django.views.generic import TemplateView


from django.views.static import serve
from Momonline.settings import MEDIA_ROOT
from apps.users.views import LoginView,RegisterView,\
    ActiveUserView,ForgetPwdView,ResetView,\
    ModifyPwdView,LogoutView


urlpatterns = [
    path('users/', include('apps.users.urls',namespace='user')),     # 用户模块
    path('login/', LoginView.as_view(), name='login'),      # 用户登录
    path('register/',RegisterView.as_view(), name='register'),      # 用户注册
    path('forget/',ForgetPwdView.as_view(),name='forget_pwd'),      # 忘记密码
    re_path("reset/(?P<active_code>.*)/",ResetView.as_view(),name = 'reset_pwd'),       # 重置密码
    path('modify_pwd/', ModifyPwdView.as_view(), name='modify_pwd'),    # 修改密码
    re_path('active/(?P<active_code>.*)/',ActiveUserView.as_view(), name='user_active'),      # 用户激活
    path('logout/', LogoutView.as_view(), name='logout'),       # 退出登录

    path('',TemplateView.as_view(template_name='index.html'),name='index'),     # 主页

    path('org/',include('apps.organization.urls',namespace='org')),        #授课机构模块

    path("course/", include('course.urls', namespace="course")),        # 课程app相关url配置
    path('captcha/',include('captcha.urls')),       # 用户操作

    path('captcha/',include('captcha.urls')),       # 验证码库
    path('xadmin/', xadmin.site.urls),      # xadmin后台管理
    path('ueditor/', include('DjangoUeditor.urls')),    # djangoueditor 富文本编辑器
    path("media/<path:path>/",serve,{"document_root":MEDIA_ROOT}),      # 上传文件路径
]
