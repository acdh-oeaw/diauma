# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.shortcuts import render


@login_required
def index(request):
    return render(request, 'maps/team.html')
