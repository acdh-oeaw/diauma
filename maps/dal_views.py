# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from dal import autocomplete
from .models import Person, Institute, Reference, Place, Map
from files.models import File, Scan


class PersonsAutocomplete(autocomplete.Select2QuerySetView):

    def get_queryset(self):
        queryset = Person.objects.all()
        if self.q:
            queryset = queryset.filter(name__icontains=self.q)
        return queryset


class ReferencesAutocomplete(autocomplete.Select2QuerySetView):

    def get_queryset(self):
        queryset = Reference.objects.all()
        if self.q:
            queryset = queryset.filter(name__icontains=self.q)
        return queryset


class InstituteAutocomplete(autocomplete.Select2QuerySetView):

    def get_queryset(self):
        queryset = Institute.objects.all()
        if self.q:
            queryset = queryset.filter(name__icontains=self.q)
        return queryset


class PlaceAutocomplete(autocomplete.Select2QuerySetView):

    def get_queryset(self):
        queryset = Place.objects.all()
        if self.q:
            queryset = queryset.filter(name__icontains=self.q)
        return queryset


class MapAutocomplete(autocomplete.Select2QuerySetView):

    def get_queryset(self):
        queryset = Map.objects.all()
        if self.q:
            queryset = queryset.filter(name__icontains=self.q)
        return queryset


class FileAutocomplete(autocomplete.Select2QuerySetView):

    def get_queryset(self):
        queryset = File.objects.all()
        if self.q:
            queryset = queryset.filter(name__icontains=self.q)
        return queryset


class ScanAutocomplete(autocomplete.Select2QuerySetView):

    def get_queryset(self):
        queryset = Scan.objects.all()
        if self.q:
            queryset = queryset.filter(name__icontains=self.q)
        return queryset
