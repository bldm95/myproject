from django.core.paginator import Paginator, PageNotAnInteger, EmptyPage
from django.shortcuts import render, render_to_response
from django.utils import timezone
from .models import News
from django.shortcuts import render, get_object_or_404


# Create your views here.
def home_list(request):
    return render(request, 'home/base.html', {})


def news_detail(request, pk):
    news_det = get_object_or_404(News, pk=pk)
    news_other = News.objects.exclude(pk__exact=pk).order_by('?')[:4]
    return render(request, 'home/news_detail.html', {'news_det': news_det, 'news_other': news_other})


def news_list(request):
    news_list = News.objects.filter(published_date__lte=timezone.now()).order_by(
        '-published_date')
    paginator = Paginator(news_list, 4)
    page = request.GET.get('page')
    try:
        news = paginator.page(page)
    except PageNotAnInteger:
        news = paginator.page(1)
    except EmptyPage:
        news = paginator.page(paginator.num_pages)
    return render_to_response('home/news_list.html', {'news': news})
