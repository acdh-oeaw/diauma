# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.contrib.auth import logout
from django.shortcuts import redirect


def user_logout(request):
    logout(request)
    return redirect('/login')
