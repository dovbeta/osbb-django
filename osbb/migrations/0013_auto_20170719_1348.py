# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-07-19 13:48
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('osbb', '0012_auto_20170719_1239'),
    ]

    operations = [
        migrations.AlterField(
            model_name='balance',
            name='date',
            field=models.DateTimeField(auto_now_add=True),
        ),
    ]
