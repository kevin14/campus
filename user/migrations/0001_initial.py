# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CpcUser',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('userName', models.CharField(max_length=16)),
                ('email', models.CharField(max_length=100)),
                ('password', models.CharField(max_length=32)),
                ('ipAddress', models.CharField(max_length=15)),
                ('createAt', models.IntegerField(max_length=10)),
                ('updateAt', models.IntegerField(max_length=10)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='CpcUserInfo',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('uAvatar', models.CharField(max_length=255)),
                ('schoolId', models.SmallIntegerField(max_length=5)),
                ('gender', models.SmallIntegerField(max_length=1, null=True, blank=True)),
                ('createAt', models.IntegerField(max_length=10, null=True, blank=True)),
                ('updateAt', models.IntegerField(max_length=10)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
