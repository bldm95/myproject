from datetime import datetime

from django.test import Client
from django.test import TestCase
from home.models import News
from home import models
from django.utils import timezone
from django.core.urlresolvers import reverse
import unittest
from tastypie.test import ResourceTestCase


#
class HomePageTest(TestCase):
    def test_homepage_available(self):
        c = Client()
        response = c.get('/')
        self.assertEquals(response.status_code, 200)


# models test
class NewsTest(TestCase):
    def create_news(self, title="Test s", text="Test Test s", image='/',
                    created_date=timezone.now(),
                    published_date=timezone.now()):
        return News.objects.create(title=title, text=text, image=image, created_date=created_date,
                                   published_date=published_date)

    def test_news_creation(self):
        n = self.create_news()
        self.assertTrue(isinstance(n, News))
        self.assertEqual(n.__unicode__(), n.title)

    # views

    def test_news_list_view(self):
        n = self.create_news()
        url = reverse('news_detail', args=[n.id])
        resp = self.client.get(url)
        # self.assertTemplateUsed(response, "home/news_detail.html")
        self.assertEqual(resp.status_code, 200)
        self.assertIn(n.title, resp.content.decode('UTF-8'))


