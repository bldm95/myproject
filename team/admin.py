from django.contrib import admin
from guardian.admin import GuardedModelAdmin
from .models import Team, Coach, Player, Rank, Photo

class TeamAdmin(GuardedModelAdmin):
    pass

admin.site.register(Team, TeamAdmin)
admin.site.register(Coach)
admin.site.register(Player)
admin.site.register(Rank)
admin.site.register(Photo)

# Register your models here.
