# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-07-19 12:37
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('osbb', '0010_auto_20170719_1235'),
    ]

    operations = [
        migrations.AlterField(
            model_name='orgaccount',
            name='title',
            field=models.CharField(max_length=50),
        ),
    ]
