from django.test import TestCase, Client
from home.models import News
import factory



#
#
class HomePageTest(TestCase):
    #
    def test_homepage_available(self):
        c = Client()
        response = c.get('/')
        self.assertEquals(response.status_code, 200)


class NewsTestCase(TestCase):
    def setUp(self):
        News.objects.create(title='Test', text='Test Test', image='/',
                            created_date='2016-10-05 09:41:48.636448', published_date='2016-11-26 20:45:00.000000')
        News.objects.create(title='Test2', text='When you run your tests,', image='/3',
                            created_date='2016-10-04 10:45:48.636448', published_date='2016-12-26 21:30:00.000000')

  #  def test_news(self):
      #  news1 = News.objects.get(title='Test')

    #    self.assertEqual(news1)
