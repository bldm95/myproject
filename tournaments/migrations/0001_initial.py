# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-10-17 15:14
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion
import django.utils.datetime_safe


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('team', '0004_auto_20161012_2052'),
    ]

    operations = [
        migrations.CreateModel(
            name='Game',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('date_time', models.DateField(default=django.utils.datetime_safe.date.today)),
                ('participant_one', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='participant_one', to='team.Team')),
                ('participant_two', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='participant_two', to='team.Team')),
                ('photo', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='team.Photo')),
            ],
        ),
        migrations.CreateModel(
            name='Goal',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('minute', models.TimeField()),
                ('penalty', models.BooleanField()),
                ('game', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tournaments.Game')),
                ('player', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to='team.Player')),
            ],
        ),
        migrations.CreateModel(
            name='Place',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=80)),
            ],
        ),
        migrations.CreateModel(
            name='Referee',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('surname', models.CharField(max_length=80)),
                ('name', models.CharField(max_length=80)),
                ('middle_name', models.CharField(max_length=80)),
                ('year_birth', models.DateField(default=django.utils.datetime_safe.date.today)),
                ('photo', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='team.Photo')),
            ],
        ),
        migrations.CreateModel(
            name='Tournament',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=80, unique=True)),
                ('year', models.DateField(default=django.utils.datetime_safe.date.today, unique=True)),
            ],
        ),
        migrations.AddField(
            model_name='game',
            name='place',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='tournaments.Place'),
        ),
        migrations.AddField(
            model_name='game',
            name='referee',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='tournaments.Referee'),
        ),
        migrations.AddField(
            model_name='game',
            name='tournament',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, to='tournaments.Tournament'),
        ),
    ]