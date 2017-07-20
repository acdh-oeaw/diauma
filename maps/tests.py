# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from django.contrib.auth.models import User
from django.test import Client, TestCase
from django.urls import reverse

from maps.models import Map, Institute, Person, Place, Reference


class MapsTest(TestCase):
    def setUp(self):
        self.client = Client()
        User.objects.create_user('temporary', 'temp@gmail.com', 'temporary')
        form_data = {'username': 'temporary', 'password': 'temporary'}
        self.client.post(reverse('webpage:login'), form_data, follow=True)

    def test_map(self):
        rv = self.client.post(reverse('maps:map-create'), {'name': 'Middle Earth'}, follow=True)
        self.assertContains(rv, 'Middle Earth')
        map_ = Map.objects.create()
        rv = self.client.post(
            reverse('maps:map-update', kwargs={'pk': map_.id}),
            {'name': 'Event Horizon', 'info': 'You\'ll never come back.'},
            follow=True)
        self.assertContains(rv, 'Event Horizon')
        rv = self.client.get(reverse('maps:map'), follow=True)
        self.assertContains(rv, 'Middle Earth')
        map_.map_persons.add(Person.objects.create(name='Hugo'))
        map_.map_references.add(Reference.objects.create())
        map_.map_base = Map.objects.create(name='Base map')
        map_.save()  # important for saving foreign keys
        rv = self.client.get(reverse('maps:map-detail', kwargs={'pk': map_.id}), follow=True)
        self.assertContains(rv, 'Hugo')
        self.assertContains(rv, 'Base map')

    def test_institute(self):
        rv = self.client.post(reverse('maps:institute-create'), {'name': 'The Asylum'}, follow=True)
        self.assertContains(rv, 'The Asylum')
        institute = Institute.objects.create()
        rv = self.client.post(
            reverse(
                'maps:institute-update',
                kwargs={'pk': institute.id}),
                {'name': 'Umbrella Corporation', 'info': '''Very long info indeed Very long info
                indeed Very long info indeed Very long info indeed Very long info indeed Very long
                info indeed Very long info indeed'''},
                follow=True)
        self.assertContains(rv, 'Umbrella Corporation')
        rv = self.client.get(reverse('maps:institute'), follow=True)
        self.assertContains(rv, 'The Asylum')

    def test_person(self):
        rv = self.client.post(reverse('maps:person-create'), {'name': 'Carina'}, follow=True)
        self.assertContains(rv, 'Carina')
        person = Person.objects.create()
        rv = self.client.post(
            reverse('maps:person-update', kwargs={'pk': person.id}), {
                'name': 'Laura', 'info': 'hello info'
            },
            follow=True)
        self.assertContains(rv, 'Laura')
        rv = self.client.get(reverse('maps:person'), follow=True)
        self.assertContains(rv, 'Carina')
        person.person_institutes.add(Institute.objects.create(name="The second Asylum"))
        person.person_location = Place.objects.create(name='Wiesen')
        rv = self.client.get(reverse('maps:person-detail', kwargs={'pk': person.id}), follow=True)
        self.assertContains(rv, 'Laura')
        self.assertContains(rv, 'The second Asylum')
        # self.assertContains(rv, 'Wiesen')

    def test_place(self):
        rv = self.client.post(reverse('maps:place-create'), {'name': 'Atlantis'}, follow=True)
        self.assertContains(rv, 'Atlantis')
        place = Place.objects.create()
        rv = self.client.post(
            reverse('maps:place-update', kwargs={'pk': place.id}),
            {'name': 'Newcastle', 'info': 'hello info'},
            follow=True)
        self.assertContains(rv, 'Newcastle')
        rv = self.client.get(reverse('maps:place'), follow=True)
        self.assertContains(rv, 'Atlantis')

    def test_reference(self):
        rv = self.client.post(
            reverse('maps:reference-create'),
            {'name': 'Cryptonomicon'},
            follow=True)
        self.assertContains(rv, 'Cryptonomicon')
        reference = Reference.objects.create()
        rv = self.client.post(
            reverse('maps:reference-update', kwargs={'pk': reference.id}),
            {'name': 'Necronomicon', 'info': 'hello info'},
            follow=True)
        self.assertContains(rv, 'Necronomicon')
        rv = self.client.get(reverse('maps:reference'), follow=True)
        self.assertContains(rv, 'Cryptonomicon')

    def test_model(self):
        rv = self.client.get(reverse('maps:model'), follow=True)
        self.assertContains(rv, 'Model')

    def test_changelog(self):
        rv = self.client.get(reverse('maps:changelog'))
        self.assertContains(rv, 'Feature')
