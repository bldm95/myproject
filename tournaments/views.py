from django.shortcuts import render, get_object_or_404

# Create your views here.
from tournaments.models import Tournament


def tournaments_list(request):
    tournaments = Tournament.objects.all().order_by('-year')  # '-' новые турниры будут первыми
    return render(request, 'tournaments/tournaments_list.html', {'tournaments': tournaments})


def tournament_detail(request, pk_tournament=1):
    tournament_det = get_object_or_404(Tournament, pk=pk_tournament)
    return render(request, 'tournaments/tournament_detail.html', {'tournament_det': tournament_det})