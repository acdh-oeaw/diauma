from django.contrib.auth.models import User
from django.test import Client, TestCase
from django.urls import reverse


class WebpageTest(TestCase):
    def setUp(self):
        self.client = Client()
        User.objects.create_user("temporary", "temp@gmail.com", "temporary")

    def test_webpage(self):
        rv = self.client.get("/")
        self.assertEqual(rv.status_code, 200)
        self.assertContains(rv, "Austrian")
        rv = self.client.get(reverse("webpage:login"))
        self.assertContains(rv, "Username")
        form_data = {"username": "temporary", "password": "temporary"}
        rv = self.client.post(reverse("webpage:login"), form_data, follow=True)
        self.assertContains(rv, "temporary")
        rv = self.client.get(reverse("webpage:logout"), follow=True)
        self.assertContains(rv, "Username")
        form_data = {"username": "non_exist", "password": "temporary"}
        rv = self.client.post(reverse("webpage:login"), form_data, follow=True)
        self.assertContains(rv, "Please try again.")
