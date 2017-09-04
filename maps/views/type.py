# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.decorators import login_required
from django.contrib.auth.mixins import LoginRequiredMixin
from django.contrib.messages.views import SuccessMessageMixin
from django.shortcuts import render, redirect
from django.urls import reverse, reverse_lazy
from django.views.generic.edit import UpdateView, DeleteView

from maps.forms import TypeForm
from maps.models import Type, Map, Person, Reference, Place, Institute

from itertools import chain


@login_required
def index(request):
    roots = Type.objects.all().filter(parent=None)
    nav_tabs = ''
    for root in roots:
        class_ = ' class="active"' if root.name == 'Map' else ''
        nav_tabs += '<li' + class_ + '><a href="#' + root.name + '" data-toggle="tab">' + root.name + '</a></li>'
    return render(request, 'maps/type/index.html', {'roots': roots, 'nav_tabs': nav_tabs})


@login_required
def detail(request, pk):
    node = Type.objects.get(pk=pk)
    # To do: refactor to only get relevant types below
    items_place = Place.objects.filter(place_type=node)
    items_reference = Reference.objects.filter(reference_type=node)
    items_institute = Institute.objects.filter(institute_type=node)
    items_map = Map.objects.filter(map_type=node)
    items_person = Person.objects.filter(person_type=node)
    related_items = list(chain(items_map, items_person, items_institute, items_reference, items_place))
    return render(request, 'maps/type/detail.html', {
        'node': node,
        'descendants': node.get_descendants(),
        'related_items': related_items})


@login_required
def create(request, pk):
    parent = Type.objects.get(pk=pk)
    form = TypeForm(request.POST or None, initial={"parent": parent})
    if request.method == 'POST' and form.is_valid():
        node = Type.objects.create(name=form['name'].data, parent=parent)
        return redirect('maps:type-detail', pk=node.id)
    return render(request, 'maps/type/create.html', {'parent': parent, 'form': form})


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
