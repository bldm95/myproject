from django.db.models import Q
from django.db.models import Sum
from django.shortcuts import render, get_object_or_404

from team.models import Team
from tournaments.models import Tournament, Game, Goal, GameImage
import operator


def tournaments_list(request):
    tournaments = Tournament.objects.all().order_by('-year')  # '-' новые турниры будут первыми
    return render(request, 'tournaments/tournaments_list.html', {'tournaments': tournaments})


def tournament_detail(request, pk_tournament=1):
    tournament_det = get_object_or_404(Tournament, pk=pk_tournament)
    games = tournament_det.game_set.all().order_by('-date_time')
    goals = Goal.objects.filter(game__tournament=pk_tournament)
    return render(request, 'tournaments/tournament_detail.html',
                  {'tournament_det': tournament_det, 'games': games, 'goals': goals, })


def game_detail(request, pk_tournament=1, pk_game=1):
    game = get_object_or_404(Game, pk=pk_game)
    tournament_det = game.tournament
    participant_one = game.participant_one
    participant_two = game.participant_two
    goals = Goal.objects.filter(game_id=pk_game)
    game_images = GameImage.objects.filter(game_id=pk_game)
    return render(request, 'tournaments/game_detail.html', {'game': game,
                                                            'participant_one': participant_one,
                                                            'participant_two': participant_two,
                                                            'tournament_det': tournament_det,
                                                            'goals': goals,
                                                            'game_images': game_images})


def tournament_table(request, year_t=2013, pk_t=2):
    tournaments = Tournament.objects.filter(pk=pk_t, year__year=year_t)
    games = Game.objects.all()
    teams = Team.objects.all()
    for team in teams:
        team.match = team.get_info_table(games)[0]
        team.win = team.get_info_table(games)[1]
        team.draw = team.get_info_table(games)[2]
        team.defeat = team.get_info_table(games)[3]
        team.win_goals = team.get_info_table(games)[4]
        team.defeat_goals = team.get_info_table(games)[5]
        team.win_g_defeat_g = team.get_info_table(games)[6]  # разница между забитыми и пропущенными
        team.points = team.get_info_table(games)[7]
    # сортировка
    sort_team = sorted(teams, key=operator.attrgetter('points'), reverse=True)
    return render(request, 'tournaments/tournament_table.html', {'tournaments': tournaments,
                                                                 'games': games,
                                                                 'teams': sort_team, })

    # teams = Team.objects.filter(Q(participant_one__tournament_id=pk_t) | Q(participant_two__tournament_id=pk_t))
