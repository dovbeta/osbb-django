# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-07-17 09:59
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Apartment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.CharField(max_length=5)),
                ('entrance', models.IntegerField()),
                ('floor', models.IntegerField()),
                ('area', models.FloatField()),
                ('rooms_number', models.IntegerField()),
            ],
        ),
        migrations.CreateModel(
            name='ApartmentType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', models.CharField(max_length=100)),
            ],
        ),
        migrations.CreateModel(
            name='Measurement',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('value', models.IntegerField()),
                ('pub_date', models.DateTimeField(verbose_name='publication date')),
            ],
        ),
        migrations.CreateModel(
            name='Meter',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('number', models.CharField(max_length=50)),
                ('valid_date', models.DateTimeField(verbose_name='validation date')),
                ('apartment', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.ApartmentType')),
            ],
        ),
        migrations.CreateModel(
            name='MeterType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('text', models.CharField(max_length=100)),
                ('uom', models.CharField(max_length=100)),
            ],
        ),
        migrations.AddField(
            model_name='meter',
            name='type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.MeterType'),
        ),
        migrations.AddField(
            model_name='measurement',
            name='meter',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.Meter'),
        ),
        migrations.AddField(
            model_name='apartment',
            name='type',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.ApartmentType'),
        ),
    ]
