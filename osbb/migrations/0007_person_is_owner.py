# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-07-17 14:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('osbb', '0006_auto_20170717_1328'),
    ]

    operations = [
        migrations.AddField(
            model_name='person',
            name='is_owner',
            field=models.BooleanField(default=False),
        ),
    ]