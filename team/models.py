from django.db import models
from django.utils import timezone
from django.utils.datetime_safe import date


class Coach(models.Model):
    surname = models.CharField(max_length=80)
    name = models.CharField(max_length=80)
    middle_name = models.CharField(max_length=80)
    year_birth = models.DateField(default=date.today)
    rank = models.ForeignKey('Rank', null=True, blank=True, on_delete=models.SET_NULL)
    photo = models.ForeignKey('Photo', null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.surname + ' ' + self.name + ' ' + self.middle_name


class Team(models.Model):
    name = models.CharField(max_length=80)
    created_date = models.DateField(default=date.today)
    text = models.TextField()
    coach = models.ForeignKey(Coach, null=True, blank=True, on_delete=models.SET_NULL)
    emblem = models.ForeignKey('Photo', null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.name


class Photo(models.Model):
    image = models.ImageField(upload_to="images/", verbose_name='Изображение')

    '''def __str__(self):
        return self.image'''


class Player(models.Model):
    surname = models.CharField(max_length=80)
    name = models.CharField(max_length=80)
    middle_name = models.CharField(max_length=80)
    year_birth = models.DateField(default=date.today)
    team = models.ForeignKey(Team, null=True, blank=True, on_delete=models.SET_NULL)
    photo = models.ForeignKey(Photo, null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.surname + ' ' + self.name + ' ' + self.middle_name


class Rank(models.Model):
    name = models.CharField(max_length=80)

    def __str__(self):
        return self.name





