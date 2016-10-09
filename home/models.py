from django.db import models
from django.utils import timezone


from team.models import Team


class News(models.Model):
    author = models.ForeignKey('auth.User')
    title = models.CharField(max_length=80)
    text = models.TextField()
    image = models.ImageField(null=False, blank=False, upload_to="images/", verbose_name='Изображение')
    created_date = models.DateTimeField(
        default=timezone.now)
    published_date = models.DateTimeField(
        blank=True, null=True)

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):
        return self.title
