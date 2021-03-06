# -*- coding: utf-8 -*-
# Generated by Django 1.11.3 on 2017-07-19 08:10
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('osbb', '0007_person_is_owner'),
    ]

    operations = [
        migrations.CreateModel(
            name='Accrual',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now=True)),
            ],
        ),
        migrations.CreateModel(
            name='AccrualDetail',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('value', models.FloatField()),
                ('date', models.DateTimeField(auto_now=True)),
                ('accrual', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.Accrual')),
            ],
        ),
        migrations.CreateModel(
            name='Balance',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now=True)),
                ('value', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='OrgAccount',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=20)),
                ('number', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='OrgBalance',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now=True)),
                ('value', models.FloatField()),
                ('org_account', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.OrgAccount')),
            ],
        ),
        migrations.CreateModel(
            name='OrgCost',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now=True)),
                ('value', models.FloatField()),
                ('receiver', models.CharField(max_length=100)),
                ('comment', models.CharField(max_length=200)),
                ('org_account', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.OrgAccount')),
            ],
        ),
        migrations.CreateModel(
            name='Payment',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date', models.DateTimeField(auto_now=True)),
                ('value', models.FloatField()),
                ('org_account', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.OrgAccount')),
            ],
        ),
        migrations.CreateModel(
            name='PersonalAccount',
            fields=[
                ('apartment', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, primary_key=True, serialize=False, to='osbb.Apartment')),
                ('number', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='Service',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200)),
                ('tariff', models.FloatField(default=0)),
                ('formula', models.CharField(max_length=200)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('personal_accounts', models.ManyToManyField(to='osbb.PersonalAccount')),
            ],
        ),
        migrations.AddField(
            model_name='payment',
            name='personal_account',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.PersonalAccount'),
        ),
        migrations.AddField(
            model_name='balance',
            name='personal_account',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.PersonalAccount'),
        ),
        migrations.AddField(
            model_name='accrualdetail',
            name='service',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.Service'),
        ),
        migrations.AddField(
            model_name='accrual',
            name='personal_account',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='osbb.PersonalAccount'),
        ),
    ]
