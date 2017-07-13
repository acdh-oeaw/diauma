# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.shortcuts import redirect
from django.contrib.auth import logout


def user_logout(request):
    logout(request)
    return redirect('/login')
