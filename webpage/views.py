# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth import logout
from django.shortcuts import redirect


def user_logout(request):
    logout(request)
    return redirect('/login')
