"""
  #create news
  >>> news = News.objects.create(title="Test s", text="Test Test s", image='/', created_date='2016-10-05 09:41:48.636448', published_date='2016-11-26 20:45:00.000000')

  #Test titel return
  >>> news.__unicode__()

  """
from home.models import News
