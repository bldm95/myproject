from django.shortcuts import render, get_object_or_404

from team.models import Team, Player, Coach


def teams_list(request):
    teams = Team.objects.all().order_by('-created_date')  # '-' новые команды будут первыми
    return render(request, 'teams/teams_list.html', {'teams': teams})


def team_detail(request, pk_team=1):
    team_det = get_object_or_404(Team, pk=pk_team)
    players = team_det.player_set.all()
    return render(request, 'teams/team_detail.html', {'team_det': team_det, 'players': players})


def player_detail(request, pk_team=1, pk_player=1):
    team_det = get_object_or_404(Team, pk=pk_team)
    player_det = get_object_or_404(Player, pk=pk_player)
    players = Player.objects.filter(team_id__exact=pk_team).exclude(pk__exact=pk_player)[:4]
    return render(request, 'teams/player_detail.html',
                  {'team_det': team_det, 'player_det': player_det, 'players': players})


def coach(request, pk_coach=1):
    coach_det = get_object_or_404(Coach, pk=pk_coach)
    coachs = Coach.objects.exclude(pk__exact=pk_coach)
    return render(request, 'teams/coach.html', {'coach_det': coach_det, 'coachs': coachs})

"""
def players_list(request, pk):
    players = Player.objects.filter(player_team__lte=)().order_by('player_created_date')  # '-' новые команды будут первыми
    return render(request, 'teams/teams_list.html', {'teams': teams})"""
