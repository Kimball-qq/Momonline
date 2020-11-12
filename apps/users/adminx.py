from apps.users.models import UserProfile,EmailVerifyRecord,Banner

import xadmin
from xadmin import views
class BaseSetting(object):
    enable_themes = True
    use_bootswatch = True


class UserProfileAdmin(object):
    style_fields = {"address": "ueditor"}   # 显示django_ueditor的编写字段
    list_display = ["username","gender","mobile","address"]     # 显示字段
    list_filter = ["username","gender","mobile","address"]      # 筛选
    search_files = ["username","gender","mobile","address"]     # 搜索
    model_icon = 'fa fa-user'       # 设置图标
    exclude = ['gender']            # 隐藏字段
    ordering = ['date_joined']      # 按字段排序
    readonly_fields = ['nick_name']     # 只读字段不能编辑
    list_editable = ['mobile']      # 在列表页直接编辑


# 设置后台网站标题和页脚
class GlobalSetting(object):
    # 修改title
    site_title = '在线教育后台管理系统'
    # 修改 页脚
    site_footer = '2020-11-05'
    # 收起菜单
    menu_style = 'accordion'


#xadmin中这里是继承object，不再是继承admin
class EmailVerifyRecordAdmin(object):
    # 显示的列
    list_display = ['code', 'email', 'send_type', 'send_time']
    # 搜索的字段
    search_fields = ['code', 'email', 'send_type']
    # 过滤
    list_filter = ['code', 'email', 'send_type', 'send_time']


class BannerAdmin(object):
    list_display = ['title', 'image', 'url','index', 'add_time']
    search_fields = ['title', 'image', 'url','index']
    list_filter = ['title', 'image', 'url','index', 'add_time']


xadmin.site.register(EmailVerifyRecord,EmailVerifyRecordAdmin)
xadmin.site.register(Banner,BannerAdmin)


xadmin.site.register(views.BaseAdminView,BaseSetting)
xadmin.site.register(views.CommAdminView,GlobalSetting)


xadmin.site.unregister(UserProfile)
xadmin.site.register(UserProfile,UserProfileAdmin)



