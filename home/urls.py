from django.conf.urls import  url, include
from . import views


urlpatterns = [
    url(r'^$', views.news_list, name='news_list'),
    url(r'^news/(?P<pk>[0-9]+)/$', views.news_detail, name='news_detail'),
    url(r'^teams/', include('team.urls')),
    url(r'^tournaments/', include('tournaments.urls')),

]