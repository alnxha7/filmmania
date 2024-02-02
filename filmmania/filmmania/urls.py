"""filmmania URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from app import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.index),
    path('genre/', views.genre),
    path('about/', views.about),
    
    path('login/', views.login),
    path('userregister/', views.userregister),
    path('criticsregister/', views.criticsregister),
    path('aspirantsregister/', views.aspirantsregister),
    
    path('admin_home/', views.admin_home),
    path('view_user/', views.view_user),
    path('approveuser/', views.approveuser),
    path('deleteuser/', views.deleteuser),
    path('view_critics/', views.view_critics),
    path('approvecrit/', views.approvecrit),
    path('rejectedcrit/', views.rejectedcrit),
    path('deletecrit/', views.deletecrit),
    path('view_aspirants/', views.view_aspirants),
    path('approveasp/', views.approveasp),
    path('rejectedasp/', views.rejectedasp),
    path('deleteasp/', views.deleteasp),
    path('add_movies/', views.add_movies),
    path('view_movies/', views.view_movies),
    path('deletemovie/', views.deletemovie),
    
    path('user_home/', views.user_home),
    path('userview_movies/', views.userview_movies),
    path('userview_critics/', views.userview_critics),
    path('userview_aspirants/', views.userview_aspirants),
    path('userviewcritics/', views.userviewcritics),
    path('userviewaspirants/', views.userviewaspirants),
    path('messageasp/', views.messageasp),
    path('messagecrit/', views.messagecrit),
    path('usrlike/', views.usrlike),
    path('usrdislike/', views.usrdislike),
    path('userlikevideo/', views.userlikevideo),
    path('userdislikevideo/', views.userdislikevideo),
    path('userviewmoviedetails/', views.userviewmoviedetails),
    path('usersview_videos/', views.usersview_videos),
    path('userviewvideodetails/', views.userviewvideodetails),
    
    path('aspirants_home/', views.aspirants_home),
    path('add_videos/', views.add_videos),
    path('view_videos/', views.view_videos),
    path('viewother_videos/', views.viewother_videos),
    path('aspirantsview_videodetails/', views.aspirantsview_videodetails),
    path('asprepalyreviewvideo/', views.asprepalyreviewvideo),
    path('asprepalyuserreviewvideo/', views.asprepalyuserreviewvideo),
    path('aspviewuser/', views.aspviewuser),
    path('aspviewcritics/', views.aspviewcritics),
    path('messageuser/', views.messageuser),
    path('messagecritics/', views.messagecritics),
    
    path('critics_home/', views.critics_home),
    path('criticsview_movies/', views.criticsview_movies),
    path('criticsview_moviesdetails/', views.criticsview_moviesdetails),
    path('criticsview_videos/', views.criticsview_videos),
    path('criticsview_videodetails/', views.criticsview_videodetails),
    path('like/', views.like),
    path('dislike/', views.dislike),
    path('asplike/', views.asplike),
    path('aspdislike/', views.aspdislike),
    path('criticsviewaspirants/', views.criticsviewaspirants),
    path('criticsviewuser/', views.criticsviewuser),
    path('messageaspirants/', views.messageaspirants),
    path('usermessage/', views.usermessage),
    
    
    
    
    
    
    
    
    
    
   
    
]
