import xadmin

# Register your models here.
from apps.course.models import Course, Lession, Video, CourseResource


# Course的admin管理器
class CourseAdmin(object):
    '''课程'''

    list_display = [ 'name','desc','detail','degree','learn_time','students']
    search_fields = ['name', 'desc', 'detail', 'degree', 'students']
    list_filter = [ 'name','desc','detail','degree','learn_time','students']


class LessionAdmin(object):
    '''章节'''

    list_display = ['course', 'name', 'add_time']
    search_fields = ['course', 'name']
    #这里course__name是根据课程名称过滤
    list_filter = ['course__name', 'name', 'add_time']


class VideoAdmin(object):
    '''视频'''

    list_display = ['lession', 'name', 'add_time']
    search_fields = ['lession', 'name']
    list_filter = ['lession', 'name', 'add_time']


class CourseResourceAdmin(object):
    '''课程资源'''

    list_display = ['course', 'name', 'download', 'add_time']
    search_fields = ['course', 'name', 'download']
    list_filter = ['course__name', 'name', 'download', 'add_time']


# 将管理器与model进行注册关联
xadmin.site.register(Course, CourseAdmin)
xadmin.site.register(Lession, LessionAdmin)
xadmin.site.register(Video, VideoAdmin)
xadmin.site.register(CourseResource, CourseResourceAdmin)