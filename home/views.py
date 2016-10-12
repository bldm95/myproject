from django.shortcuts import render
from django.utils import timezone
from .models import News
from django.shortcuts import render, get_object_or_404


# Create your views here.
def home_list(request):
    return render(request, 'home/base.html', {})


def news_list(request):
    news = News.objects.filter(published_date__lte=timezone.now()).order_by(
        '-published_date')  # -обозначает что первые новости будут первыми
    return render(request, 'home/news_list.html', {'news': news})


def news_detail(request, pk):

    news_det = get_object_or_404(News, pk=pk)
    news_other = News.objects.exclude(pk__exact=pk).order_by('?')[:4]
    return render(request, 'home/news_detail.html', {'news_det': news_det, 'news_other': news_other})
