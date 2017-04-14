from django.test import TestCase, Client
from home.models import News
import factory

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

#views

    def test_news_list_view(self):
        n = self.create_news()
        url = reverse('/news/pk/', {"pk": n.id})
        resp = self.client.get(url)
        self.assertEqual(resp.status_code, 200)
        self.assertIn(n.title, resp.content)
'''
#



class NewsTestCase(TestCase):
    def setUp(self):
        # self.news = []
        ##    new_news = News.objects.create(title="Test %d %i", text="Test Test %d %i", image='/',
        ##                          created_date='2016-10-05 09:41:48.636448',
        ##                           published_date='2016-11-26 20:45:00.000000')
        #   self.news.append(new_news)
        self.one_new = News.objects.create(title="Test s", text="Test Test s", image='/',
                                           created_date='2016-10-05 09:41:48.636448',
                                           published_date='2016-11-26 20:45:00.000000')
        #

    def test_homepage_contains_posts(self):
        c = Client()
        response = c.get('/')
        self.assertEquals(response.status_code, 200)
        self.assertEquals(self.one_new.title, "Test s")
        #self.assertIn(self.one_new.title, response.content_type)
        # self.assertIn(self.news[2].title, response.content)



        #  def test_news(self):
        #  news1 = News.objects.get(title='Test')

        #    self.assertEqual(news1)
'''