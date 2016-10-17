from django.conf.urls import url
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^$', views.tournaments_list, name='tournaments_list'),
    url(r'^tournament/(?P<pk_tournament>[0-9]+)/$', views.tournament_detail, name='tournament_detail'),
]
