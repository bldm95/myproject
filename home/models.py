from django.db import models
from django.utils import timezone


from team.models import Team


class News(models.Model):
    news_author = models.ForeignKey('auth.User')
    news_title = models.CharField(max_length=80)
    news_text = models.TextField()
    news_image = models.ForeignKey('team.Photo', null=True, blank=True, on_delete=models.CASCADE)
    news_created_date = models.DateTimeField(
        default=timezone.now)
    news_published_date = models.DateTimeField(
        blank=True, null=True)

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):
        return self.news_title
