from django.contrib import admin
from .models import Tournament,Referee, Game, Goal, Place


admin.site.register(Tournament)
admin.site.register(Referee)
admin.site.register(Game)
admin.site.register(Goal)
admin.site.register(Place)