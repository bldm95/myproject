from django.db import models
from django.utils import timezone


class News(models.Model):
    news_author = models.ForeignKey('auth.User')  # решить какой тип
    news_title = models.CharField(max_length=64)
    news_text = models.TextField()
    news_image = models.ImageField(null=True, blank=True, upload_to="images/", verbose_name='Изображение')
    news_created_date = models.DateTimeField(
        default=timezone.now)
    news_published_date = models.DateTimeField(
        blank=True, null=True)

    def publish(self):
        self.published_date = timezone.now()
        self.save()

    def __str__(self):
        return self.title
