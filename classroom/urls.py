from django.urls import path,include
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('signin/', views.handeLogin, name="handleLogin"),
    path('admin/', views.admin, name="admin"),
    path('addcourse/', views.addcourse, name="addcourse"),
    path('addclass/', views.addclass, name="addclass"),
    path('addteacher/', views.addteacher, name="addteacher"),
    path('addstudent/', views.addstudent, name="addstudent"),
    path('giveattendance/',views.giveattendance,name='giveattendance'),
    path('pendingteacherattendance/',views.pendingteacherattendance,name="pendingteacherattendance"),
    path('pendingstudentattendance/', views.pendingstudentattendance, name="pendingstudentattendance"),
    path('approve/<str:id>',views.approve,name="approve"),
    path('discard/<str:id>',views.discard,name="discard"),
    path('logout/', views.handelLogout, name="handleLogout"),
    path('dashboard/',views.dashboard,name="dashboard"),
]