from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User


class News(models.Model):

    user = models.ForeignKey(User, verbose_name="пользователь", blank=True, null=True)
    title = models.CharField(verbose_name="заголовок", max_length=80)
    text = models.TextField()
    image = models.ImageField(null=False, blank=False, upload_to="images/", verbose_name='Изображение')
    created_date = models.DateTimeField(verbose_name="дата создания",
                                        default=timezone.now)
    published_date = models.DateTimeField(
        blank=True, null=True)
    source = models.CharField(max_length=255, null=True, blank=True, default='')
    name_source = models.CharField(max_length=30, null=True, blank=True)

    def __unicode__(self):
        return self.title

    class Meta:
        permissions = (
            ('view_news', 'Can view news'),
        )

    @models.permalink
    def get_absolute_url(self):
        return {'news_title': self.title}