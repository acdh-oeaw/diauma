from django.test import Client, TestCase
from django.urls import reverse

from maps.model.institute import Institute
from maps.model.map import Map
from maps.model.person import Person
from maps.model.place import Place
from maps.model.reference import Reference


class MapsTest(TestCase):

    fixtures = ["types.json"]

    def setUp(self):
        self.client = Client()

    def test_browse(self):
        rv = self.client.get(reverse("maps:browse"))
        self.assertContains(rv, "Browse")

    def test_team(self):
        rv = self.client.get(reverse("maps:team"))
        self.assertContains(rv, "Team")

    def test_leaflet(self):
        rv = self.client.get(reverse("maps:leaflet"))
        self.assertContains(rv, "Overlay")

    def test_leaflet_basemaps(self):
        rv = self.client.get(reverse("maps:base-map-info"))
        self.assertContains(rv, "Basemaps")

    def test_overlay_detail(self):
        rv = self.client.get(reverse("maps:leaflet-detail", kwargs={"id_": "11"}))
        self.assertContains(rv, "Kärntner Abwehrkämpfe")

    def test_changelog(self):
        rv = self.client.get(reverse("maps:changelog"))
        self.assertContains(rv, "Feature")

    def test_imprint(self):
        rv = self.client.get(reverse("maps:imprint"))
        self.assertContains(rv, "E-Commerce")

    def test_network(self):
        map_ = Map.objects.create(name="Atlantis")
        person = Person.objects.create(name="Alice")
        map_.map_persons.add(person)
        Place.objects.create(name="Valhalla")
        Institute.objects.create(name="Umbrella Corporation")
        Reference.objects.create(name="Grimoire A")
        rv = self.client.get(reverse("maps:network"))
        self.assertContains(rv, "Network")
