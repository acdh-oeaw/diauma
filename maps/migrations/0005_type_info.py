# Generated by Django 2.0.2 on 2018-02-21 13:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('maps', '0004_auto_20180213_1331'),
    ]

    operations = [
        migrations.AddField(
            model_name='type',
            name='info',
            field=models.TextField(blank=True),
        ),
    ]
