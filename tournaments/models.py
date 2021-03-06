from django.db import models
from django.db.models import Q
from django.shortcuts import get_object_or_404
from django.utils import timezone
from django.utils.datetime_safe import date

from team.models import Team, Player


class Tournament(models.Model):
    name = models.CharField(max_length=80, null=False, blank=False)
    start_date = models.DateField(default=date.today, null=False, blank=False)
    end_date = models.DateField(default=date.today, null=False, blank=False)

    def __str__(self):
        return self.name + ' ' + '  С ' + str(self.start_date.strftime('%d-%m-%y')) + ' по ' + str(
            self.end_date.strftime('%d-%m-%y'))

    # запрос путя картинки
    def get_game_photo(self):
        game_one = GameImage.objects.filter(game__tournament=self.id)[:1]
        return game_one[0].image.url


class Game(models.Model):
    tournament = models.ForeignKey('Tournament', null=True, blank=True, on_delete=models.SET_NULL)
    participant_one = models.ForeignKey('team.Team', null=True, blank=True, on_delete=models.SET_NULL,
                                        related_name='participant_one',
                                        unique=False)
    participant_two = models.ForeignKey('team.Team', null=True, blank=True, on_delete=models.SET_NULL,
                                        related_name='participant_two', unique=False)
    date_time = models.DateTimeField(blank=True, null=True)
    place = models.ForeignKey('Place', null=True, blank=True, on_delete=models.SET_NULL)
    referee = models.ForeignKey('Referee', null=True, blank=True, on_delete=models.SET_NULL)
    played = models.BooleanField(default=0)

    def get_goals(self):
        # запрос всех голов этой игры
        goals = Goal.objects.filter(game=self.id)
        team_one_count = 0
        team_two_count = 0
        for goal in goals:
            if goal.player.team.pk == self.participant_one.pk and goal.type != '1':
                team_one_count += 1
            elif goal.player.team.pk == self.participant_one.pk and goal.type == '1':
                team_two_count += 1
            if goal.player.team.pk == self.participant_two.pk and goal.type != '1':
                team_two_count += 1
            elif goal.player.team.pk == self.participant_two.pk and goal.type == '1':
                team_one_count += 1
        return team_one_count, team_two_count

    def __str__(self):
        return self.tournament.name + ' ' + self.participant_one.name + ' ' + self.participant_two.name + ' ' + str(
            self.date_time.strftime('%d-%m-%y-%H:%M'))

    '''3 метода один общий и два конкретных'''


class GameImage(models.Model):
    game = models.ForeignKey(Game, related_name='images')
    image = models.ImageField(upload_to="images/")


class Referee(models.Model):
    surname = models.CharField(max_length=80)
    name = models.CharField(max_length=80)
    middle_name = models.CharField(max_length=80)
    year_birth = models.DateField(default=date.today, )
    photo = models.ForeignKey('team.Photo', null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.surname + ' ' + self.name + ' ' + self.middle_name


def limit_player_choices(game):
    player = Player.objects.all()
    return player


class Goal(models.Model):
    GOAL_TYPE_CHOICES = (
        ('0', 'normal'),
        ('1', 'own goal'),
        ('2', 'penalty'),
    )
    game = models.ForeignKey('Game', null=False, blank=False, on_delete=models.CASCADE)
    minute = models.PositiveSmallIntegerField(null=False, blank=False, )
    sec = models.PositiveSmallIntegerField(null=False, blank=False, )
    player = models.ForeignKey('team.Player', null=True, blank=True,
                               on_delete=models.SET_NULL)  # ошибка потому-что команда не выбрана -
    # чтобы вывести именно тех игроков которые участвовали в данной игре, необходимы выбрать команду,
    # а после загрузить игроков,возможно,
    # это можно будет сделать только с помощью Angular/ Пробовал сделать через метод  limit_choices_to={'team_id': 5}
    type = models.CharField(max_length=1, choices=GOAL_TYPE_CHOICES, default=0)

    def __str__(self):
        return self.game.tournament.name + ' ' + str(self.game.date_time) + ' ' + self.player.surname + ' ' + str(
            self.minute) + ':' + str(self.sec)


class Place(models.Model):
    name = models.CharField(max_length=80)
    address = models.CharField(max_length=150, default='null')

    def __str__(self):
        return self.name
