# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView

from maps.forms import TypeForm
from maps.models import Type


def index(request):
    nodes = Type.objects.all()
    return render(request, 'maps/type/index.html', {'nodes': nodes})


@login_required
def detail(request, pk):
    node = Type.objects.get(pk=pk)
    descendants = node.get_descendants()
    return render(request, 'maps/type/detail.html', {
        'node': node, 'descendants': descendants
    })


class Create(LoginRequiredMixin, SuccessMessageMixin, CreateView):
    model = Type
    template_name = 'maps/type/create.html'
    form_class = TypeForm
    success_message = 'An entry has been created.'

    def get_success_url(self):
        return reverse('maps:type-detail', kwargs={'pk': self.object.pk})


class Update(LoginRequiredMixin, SuccessMessageMixin, UpdateView):
    model = Type
    template_name = 'maps/type/update.html'
    form_class = TypeForm
    success_message = 'An entry has been updated.'

    def get_success_url(self):
        return reverse('maps:type-detail', kwargs={'pk': self.object.pk})


class Delete(LoginRequiredMixin, SuccessMessageMixin, DeleteView):
    model = Type
    success_url = reverse_lazy('maps:person')
    success_message = 'An entry has been deleted.'
