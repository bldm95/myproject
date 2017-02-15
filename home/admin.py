from django.contrib import admin
from home.models import News

from guardian.admin import GuardedModelAdmin


class NewsAdmin(GuardedModelAdmin):
    list_display = ('title', 'user', 'created_date')
    search_fields = ('title', 'text')
    ordering = ('-created_date',)

    def view_news(self):
        pass
        return


admin.site.register(News, NewsAdmin)
