from django.conf.urls import url
from . import views


urlpatterns = [
    url(r'^$', views.teams_list, name='teams_list'),
    url(r'^team/(?P<pk_team>[0-9]+)/$', views.team_detail, name='team_detail'),
    url(r'^team/(?P<pk_team>[0-9]+)/player/(?P<pk_player>[0-9]+)/$', views.player_detail, name='player_detail'),
    url(r'^coach/(?P<pk_coach>[0-9]+)/$', views.coach, name='coach_detail')
]
