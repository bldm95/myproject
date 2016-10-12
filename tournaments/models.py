from django.db import models
from django.utils.datetime_safe import date


class Tournament(models.Model):
    name = models.CharField(max_length=80)
    year = models.DateField(default=date.today)
    team = models.ManyToManyField('team.Team', db_table='participant')


def __str__(self):
    return self.name


class Referee(models.Model):
    surname = models.CharField(max_length=80)
    name = models.CharField(max_length=80)
    middle_name = models.CharField(max_length=80)
    year_birth = models.DateField(default=date.today)
    photo = models.ForeignKey('team.Photo', null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.surname + ' ' + self.name + ' ' + self.middle_name


class Game(models.Model):
    tournament = models.ForeignKey('Tournament', null=True, blank=True, on_delete=models.SET_NULL)
    participant_one = models.ForeignKey('')
    participant_two = models.ForeignKey('')
    date_time = models.DateField(default=date.today)
    place = models.ForeignKey('Place', null=True, blank=True, on_delete=models.SET_NULL)
    referee = models.ForeignKey('Referee', null=True, blank=True, on_delete=models.SET_NULL)
    photo = models.ForeignKey('team.Photo', null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.tournament + ' ' + self.participant_one + ' ' + self.participant_two


class Goal(models.Model):
    game = models.ForeignKey('Game', null=False, blank=False, on_delete=models.CASCADE)
    minute = models.TimeField(auto_now=False)
    player = models.OneToOneField('team.Player', on_delete=models.CASCADE)
    penalty = models.BooleanField()

    def __str__(self):
        return self.game + ' ' + self.player + ' ' + self.minute


class Place(models.Model):
    name = models.CharField(max_length=80)

    def __str__(self):
        return self.name
