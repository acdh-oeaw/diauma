# Created by Alexander Watzinger at the ACDH. Please see README.md for licensing information
from django.conf import settings
from django.contrib.auth.models import User
from django.core.files.uploadedfile import SimpleUploadedFile
from django.test import Client, TestCase
from django.urls import reverse

from maps.model.file import File
from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference
from maps.model.scan import Scan
from maps.model.type import Type


class MapsTest(TestCase):

    fixtures = ['types.json']

    def setUp(self):
        self.client = Client()
        User.objects.create_user('temporary', 'temp@gmail.com', 'temporary')
        form_data = {'username': 'temporary', 'password': 'temporary'}
        self.client.post(reverse('webpage:login'), form_data, follow=True)

    def test_leaflet(self):
        rv = self.client.get(reverse('maps:leaflet'))
        self.assertContains(rv, 'Overlay')

    def test_map(self):
        rv = self.client.post(reverse('maps:map-create'), {'name': 'Middle Earth'}, follow=True)
        self.assertContains(rv, 'Middle Earth')
        map_ = Map.objects.create()
        rv = self.client.post(
            reverse('maps:map-update', kwargs={'pk': map_.id}), {
                'name': 'Event Horizon',
                'date_created': '1999-12-31',
                'date_created2': '1999-12-31',
                'date_content': '1999-12-31',
                'date_content2': '1999-12-31',
                'info': 'You\'ll never come back.'},
            follow=True)
        self.assertContains(rv, 'Event Horizon')
        rv = self.client.get(reverse('maps:map'), follow=True)
        self.assertContains(rv, 'Middle Earth')
        self.assertContains(rv, '1999')
        map_.map_persons.add(Person.objects.create(name='Hugo'))
        map_.map_references.add(Reference.objects.create())
        map_.map_institute.add(Institute.objects.create())
        map_.map_base = Map.objects.create(name='Base map')
        map_.save()  # important for saving foreign keys
        rv = self.client.get(reverse('maps:map-detail', kwargs={'pk': map_.id}), follow=True)
        self.assertContains(rv, 'Hugo')
        self.assertContains(rv, 'Base map')
        rv = self.client.post(reverse('maps:map-delete', kwargs={'pk': map_.id}), follow=True)
        self.assertContains(rv, 'An entry has been deleted.')

    def test_institute(self):
        rv = self.client.post(reverse('maps:institute-create'), {'name': 'The Asylum'}, follow=True)
        self.assertContains(rv, 'The Asylum')
        institute = Institute.objects.create()
        rv = self.client.post(reverse('maps:institute-update', kwargs={'pk': institute.id}), {
                'name': 'Umbrella Corporation', 'info': 'Cooperate info'}, follow=True)
        self.assertContains(rv, 'Umbrella Corporation')
        rv = self.client.get(reverse('maps:institute'), follow=True)
        self.assertContains(rv, 'Cooperate info')
        rv = self.client.post(reverse(
            'maps:institute-delete',
            kwargs={'pk': institute.id}),
            follow=True)
        self.assertContains(rv, 'An entry has been deleted.')

    def test_person(self):
        rv = self.client.post(reverse('maps:person-create'), {'name': 'Carina'}, follow=True)
        self.assertContains(rv, 'Carina')
        person = Person.objects.create()
        rv = self.client.post(
            reverse('maps:person-update', kwargs={'pk': person.id}), {
                'name': 'Laura',
                'map-type-Sex-id': Type.objects.get(name="Female").id,
                'date_begin': '2000-02-02',
                'date_end': '2140-02-02',
                'info': """ It's a fine day, people open windows. 
                            They leave the houses, just for a short while."""},
            follow=True)
        self.assertContains(rv, 'Laura')
        rv = self.client.get(reverse('maps:person-update', kwargs={'pk': person.id}), follow=True)
        self.assertContains(rv, 'open windows')
        rv = self.client.get(reverse('maps:person'), follow=True)
        self.assertContains(rv, 'Carina')
        self.assertContains(rv, '2140')
        person.person_institutes.add(Institute.objects.create(name="The second Asylum"))
        rv = self.client.get(reverse('maps:person-detail', kwargs={'pk': person.id}), follow=True)
        self.assertContains(rv, 'Laura')
        self.assertContains(rv, 'The second Asylum')
        rv = self.client.post(reverse('maps:person-delete', kwargs={'pk': person.id}), follow=True)
        self.assertContains(rv, 'An entry has been deleted.')

    def test_place(self):
        rv = self.client.post(reverse('maps:place-create'), {'name': 'Atlantis'}, follow=True)
        self.assertContains(rv, 'Atlantis')
        place = Place.objects.create()
        rv = self.client.post(
            reverse('maps:place-update', kwargs={'pk': place.id}),
            {'name': 'Newcastle', 'info': 'hello info'},
            follow=True)
        self.assertContains(rv, 'Newcastle')
        rv = self.client.get(reverse('maps:place-update', kwargs={'pk': place.id}), follow=True)
        self.assertContains(rv, 'hello info')
        rv = self.client.get(reverse('maps:place'), follow=True)
        self.assertContains(rv, 'Atlantis')
        rv = self.client.post(reverse('maps:place-delete', kwargs={'pk': place.id}), follow=True)
        self.assertContains(rv, 'An entry has been deleted.')

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
        rv = self.client.post(reverse(
            'maps:reference-delete', kwargs={'pk': reference.id}), follow=True)
        self.assertContains(rv, 'An entry has been deleted.')

    def test_types(self):
        rv = self.client.get(reverse('maps:type'), follow=True)
        self.assertContains(rv, 'Female')
        node = Type.objects.all().filter(parent=None)[0]
        self.client.get(reverse('maps:type-create', kwargs={'pk': node.id}))
        rv = self.client.post(
            reverse('maps:type-create', kwargs={'pk': node.id}),
            {'name': 'My type of drink.','info': '', 'parent': node.id},
            follow=True)
        self.assertContains(rv, 'My type of drink.')
        new_node = Type.objects.get(name="My type of drink.")
        rv = self.client.post(
            reverse('maps:type-update', kwargs={'pk': new_node.id}),
            {'name': 'My type of drink, too.', 'parent': node.id},
            follow=True)
        self.assertContains(rv, 'My type of drink, too.')
        rv = self.client.post(reverse('maps:type-delete', kwargs={'pk': node.id}), follow=True)
        self.assertContains(rv, "if there are related entities or sub types.")
        rv = self.client.post(reverse('maps:type-delete', kwargs={'pk': new_node.id}), follow=True)
        self.assertContains(rv, 'An entry has been deleted.')

    def test_search(self):
        self.client.post(reverse('maps:search'), follow=True)
        rv = self.client.post(reverse('maps:search'), {'search-term': 'never_find_me'}, follow=True)
        self.assertContains(rv, 'No results for')
        Map.objects.create(name="Atlantis")
        Place.objects.create(name="Valhalla")
        Institute.objects.create(name="Umbrella Corporation")
        Person.objects.create(name="Alice")
        Reference.objects.create(name="Grimoire A")
        rv = self.client.post(reverse('maps:search'), {'search-term': 'a'}, follow=True)
        self.assertContains(rv, 'Atlantis')
        self.assertContains(rv, 'Valhalla')
        self.assertContains(rv, 'Umbrella')
        self.assertContains(rv, 'Alice')
        self.assertContains(rv, 'Grimoire')
        rv = self.client.post(reverse('maps:search'), {'search-term': 'a'}, follow=True)
        self.assertContains(rv, 'Atlantis')

    def test_changelog(self):
        rv = self.client.get(reverse('maps:changelog'))
        self.assertContains(rv, 'Feature')

    def test_imprint(self):
        rv = self.client.get(reverse('maps:imprint'))
        self.assertContains(rv, 'E-Commerce')

    def test_network(self):
        map_ = Map.objects.create(name="Atlantis")
        person = Person.objects.create(name="Alice")
        map_.map_persons.add(person)
        Place.objects.create(name="Valhalla")
        Institute.objects.create(name="Umbrella Corporation")
        Reference.objects.create(name="Grimoire A")
        rv = self.client.get(reverse('maps:network'))
        self.assertContains(rv, 'Network')

    def test_files(self):
        rv = self.client.get(reverse('maps:files-index'))
        self.assertContains(rv, 'Scan +')
        rv = self.client.get(reverse('maps:scan-create'))
        self.assertContains(rv, 'Scan +')
        rv = self.client.get(reverse('maps:file-create'))
        self.assertContains(rv, 'File +')
