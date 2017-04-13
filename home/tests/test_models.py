from django.test import TestCase
from home.models import News
from django.utils import timezone
from django.core.urlresolvers import reverse


# models test
class NewsTest(TestCase):
    def create_news(self, title="Test s", text="Test Test s", image='/',
                    created_date='2016-10-05 09:41:48.636448',
                    published_date='2016-11-26 20:45:00.000000'):
        return News.objects.create(title=title, text=text, image=image, created_date=created_date,
                                   published_date=published_date)

    def test_news_creation(self):
        n = self.create_news()
        self.assertTrue(isinstance(n, News))
        self.assertEqual(n.__unicode__(), n.title)
