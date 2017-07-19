# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-07-19 14:55
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('osbb', '0015_auto_20170719_1351'),
    ]

    operations = [
        migrations.AddField(
            model_name='personalaccount',
            name='date',
            field=models.DateTimeField(auto_now=True),
        ),
        migrations.AddField(
            model_name='personalaccount',
            name='debt',
            field=models.FloatField(default=0),
        ),
        migrations.AlterField(
            model_name='balance',
            name='date',
            field=models.DateTimeField(auto_now=True),
        ),
        migrations.AlterField(
            model_name='balance',
            name='personal_account',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='balances', to='osbb.PersonalAccount'),
        ),
    ]
