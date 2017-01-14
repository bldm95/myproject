from django.conf.urls import url
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^$', views.tournaments_list, name='tournaments_list'),
    url(r'^tournament/(?P<pk_tournament>[0-9]+)/$', views.tournament_detail, name='tournament_detail'),
    url(r'^tournament/(?P<pk_tournament>[0-9]+)/game/(?P<pk_game>[0-9]+)/$', views.game_detail, name='game_detail'),
    url(r'^table/$', views.tournament_table, name='tournament_table'),
]
