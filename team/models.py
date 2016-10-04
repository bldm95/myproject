from django.db import models
from django.utils import timezone
from django.utils.datetime_safe import date


class Coach(models.Model):
    coach_name = models.CharField(max_length=80)
    coach_middle_name = models.CharField(max_length=80)
    coach_surname = models.CharField(max_length=80)
    coach_year_birth = models.DateField(default=date.today)
    coach_rank = models.ForeignKey('Rank', null=True, blank=True, on_delete=models.CASCADE)
    coach_photo = models.ForeignKey('Photo', null=True, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.coach_surname + ' ' + self.coach_name + ' ' + self.coach_middle_name


class Team(models.Model):
    team_name = models.CharField(max_length=80)
    team_created_date = models.DateField(default=date.today)
    team_text = models.TextField()
    team_coach = models.ForeignKey(Coach, null=True, blank=True, on_delete=models.CASCADE)
    team_emblem = models.ForeignKey('Photo', null=True, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.team_name


class Photo(models.Model):
    photo_image = models.ImageField(upload_to="images/", verbose_name='Изображение')




class Player(models.Model):
    player_name = models.CharField(max_length=80)
    player_middle_name = models.CharField(max_length=80)
    player_surname = models.CharField(max_length=80)
    player_year_birth = models.DateField(default=date.today)
    player_team = models.ForeignKey(Team, on_delete=models.CASCADE)
    player_photo = models.ForeignKey(Photo, null=True, blank=True, on_delete=models.CASCADE)

    def __str__(self):
        return self.player_surname + ' ' + self.player_name + ' ' + self.player_middle_name


class Rank(models.Model):
    rank_name = models.CharField(max_length=80)

    def __str__(self):
        return self.rank_name


def publish(self):
    self.published_date = timezone.now()
    self.save()


def __str__(self):
    return self.team_name
