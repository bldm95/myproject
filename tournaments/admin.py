from django.contrib import admin
from .models import Tournament, Referee, Game, Goal, Place, GameImage


class GameImageAdmin(admin.ModelAdmin):
    pass


class GameImageInLine(admin.TabularInline):
    model = GameImage
    max_num = 10
    extra = 0


class GameAdmin(admin.ModelAdmin):
    inlines = [GameImageInLine, ]


class GoalsAdmin(admin.ModelAdmin):
    list_display = ('game', 'minute', 'sec', 'player')
    search_fields = ('game', 'player')


admin.site.register(GameImage, GameImageAdmin)
admin.site.register(Game, GameAdmin)
admin.site.register(Tournament)
admin.site.register(Referee)
admin.site.register(Goal, GoalsAdmin)
admin.site.register(Place)
