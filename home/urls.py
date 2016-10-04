from django.conf.urls import  url, include
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^$', views.news_list, name='news_list'),
    url(r'^news/(?P<pk>[0-9]+)/$', views.news_detail, name='news_detail'),
    url(r'^teams/', include('team.urls')),

]