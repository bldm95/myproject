from django.shortcuts import render
from django.utils import timezone
from .models import News
from django.shortcuts import render, get_object_or_404


# Create your views here.
def home_list(request):
    return render(request, 'home/home_list.html', {})


def news_list(request):
    news = News.objects.filter(news_published_date__lte=timezone.now()).order_by('-news_published_date') #-обозначает что первые новости будут первыми
    return render(request, 'home/news_list.html', {'news': news})
