# Generated by Django 3.2.7 on 2021-09-04 06:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('classroom', '0005_pendingattendance'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='attendance',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='teacher',
            name='attendance',
            field=models.IntegerField(default=0),
        ),
    ]
