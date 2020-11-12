from django.urls import path,re_path



from apps.organization.views import OrgView,AddUserAskView,OrgHomeView,OrgCourseView,\
    OrgDescView,OrgTeacherView,AddFavView,TeacherListView,TeacherDetailView

app_name = "organization"

urlpatterns = [
    path('list/',OrgView.as_view(),name='org_list'),    # 课程列表
    re_path('home/(?P<org_id>\d+)/', OrgHomeView.as_view(), name="org_home"),  # 机构首页
    re_path('course/(?P<org_id>\d+)/', OrgCourseView.as_view(), name="org_course"), # 机构课程
    re_path('desc/(?P<org_id>\d+)/', OrgDescView.as_view(), name="org_desc"),   # 机构介绍
    re_path('org_teacher/(?P<org_id>\d+)/', OrgTeacherView.as_view(), name="org_teacher"), #机构讲师

    path('add_fav/', AddFavView.as_view(), name="add_fav"),   # 机构收藏
    path('add_ask/', AddUserAskView.as_view(), name="add_ask"),  # 添加用户咨询

    path('teacher/list/', TeacherListView.as_view(), name="teacher_list"),   # 讲师列表
    re_path('teacher/detail/(?P<teacher_id>\d+)/', TeacherDetailView.as_view(), name="teacher_detail"),  # 讲师详情

]

































