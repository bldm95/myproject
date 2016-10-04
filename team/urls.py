from django.conf.urls import  url
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^$', views.teams_list, name='teams_list'),
    url(r'^team/(?P<pk>[0-9]+)/$', views.team_detail, name='team_detail'),
]