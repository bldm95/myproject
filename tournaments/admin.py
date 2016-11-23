from django.contrib import admin
from .models import Tournament, Referee, Game, Goal, Place, GameImage

admin.site.register(Tournament)
admin.site.register(Referee)

admin.site.register(Goal)
admin.site.register(Place)

class GameImageAdmin(admin.ModelAdmin):
    pass


class GameImageInLine(admin.TabularInline):
    model = GameImage
    max_num = 10
    extra = 0


class GameAdmin(admin.ModelAdmin):
    inlines = [GameImageInLine, ]

admin.site.register(GameImage, GameImageAdmin)
admin.site.register(Game, GameAdmin)
