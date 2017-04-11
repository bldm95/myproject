from django.test import TestCase, Client
from home.models import News
import factory


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
