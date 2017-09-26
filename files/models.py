from django.db import models


class Image(models.Model):
    document = models.FileField(upload_to='documents/')
    info = models.TextField(blank=True)
    created_date = models.DateTimeField(auto_now_add=True)
