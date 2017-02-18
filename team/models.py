from django.db import models
from django.db.models import Q
from django.utils import timezone
from django.utils.datetime_safe import date

#from tournaments.models import Game


class Coach(models.Model):
    surname = models.CharField(max_length=80)
    name = models.CharField(max_length=80)
    middle_name = models.CharField(max_length=80)
    year_birth = models.DateField(default=date.today)
    team = models.ForeignKey('Team', null=True, blank=True, on_delete=models.SET_NULL)
    rank = models.ForeignKey('Rank', null=True, blank=True, on_delete=models.SET_NULL)
    photo = models.ForeignKey('Photo', null=True, blank=True, on_delete=models.SET_NULL)

    def __str__(self):
        return self.surname + ' ' + self.name + ' ' + self.middle_name


class Team(models.Model):
    name = models.CharField(max_length=80)
    created_date = models.DateField(default=date.today)
    text = models.TextField()
    emblem = models.ForeignKey('Photo', null=True, blank=True, on_delete=models.SET_NULL)
    match = 0
    defeat = 0
    win = 0
    win_goals = 0
    defeat_goals = 0
    draw = 0  # ничья
    points = 0
    win_g_defeat_g = 0  # разница между забитыми и пропущенными

    def __str__(self):
        return self.name

    def get_info_table(self, games):
        match = 0  # кол-во матчей
        defeat = 0  # поражения
        win = 0  # победы
        win_goals = 0  # забитые мячи
        defeat_goals = 0  # пропущенные мячи
        draw = 0  # ничья
        points = 0  # очки
        team = self.id
        #games = 50 #Game.objects.filter(Q(participant_one=self.id) | Q(participant_two=self.id) & ~Q(played=0))  # ~ = NOT
        for game in games:
            match += 1
            part_one_goals_count = game.get_goals()[0]
            part_two_goals_count = game.get_goals()[1]
            if game.participant_one.id == team:
                if part_one_goals_count > part_two_goals_count:
                    win += 1
                    win_goals += part_one_goals_count
                    defeat_goals += part_two_goals_count
                    points += 3
                elif part_one_goals_count == part_two_goals_count:
                    win_goals += part_one_goals_count
                    defeat_goals += part_two_goals_count
                    draw += 1
                    points += 1
                else:
                    defeat += 1
                    defeat_goals += part_two_goals_count
            if game.participant_two.id == team:
                if part_two_goals_count > part_one_goals_count:
                    win += 1
                    win_goals += part_two_goals_count
                    defeat_goals += part_one_goals_count
                    points += 3
                elif part_one_goals_count == part_two_goals_count:
                    draw += 1
                    points += 1
                    win_goals += part_two_goals_count
                    defeat_goals += part_one_goals_count
                else:
                    defeat += 1
                    defeat_goals += part_one_goals_count
        self.match = match
        self.win = win
        self.draw = draw
        self.defeat = defeat
        self.win_goals = win_goals
        self.defeat_goals = defeat_goals
        self.win_g_defeat_g = win_goals - defeat_goals
        self.points = points
        #return match, win, draw, defeat, win_goals, defeat_goals, win_goals - defeat_goals, points  # перебрать результат в цикле


class Photo(models.Model):
    image = models.ImageField(upload_to="images/", verbose_name='Изображение')


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
