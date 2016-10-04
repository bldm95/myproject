from django.shortcuts import render, get_object_or_404

from team.models import Team


def teams_list(request):
    teams = Team.objects.all().order_by('-team_created_date')  # '-' новые команды будут первыми
    return render(request, 'teams/teams_list.html', {'teams': teams})


def team_detail(request, pk):

    team_det = get_object_or_404(Team, pk=pk)
    return render(request, 'teams/team_detail.html', {'team_det': team_det})