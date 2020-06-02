from dal import autocomplete

from maps.model.file import File
from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference
from maps.model.scan import Scan


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
