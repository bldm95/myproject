from django.contrib import admin
from .models import Team, Coach, Player, Rank, Photo

admin.site.register(Team)
admin.site.register(Coach)
admin.site.register(Player)
admin.site.register(Rank)
admin.site.register(Photo)
# Register your models here.
