# Generated by Django 3.2.7 on 2021-09-04 13:38

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('classroom', '0006_auto_20210904_1223'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='teacherattendance',
            name='Class',
        ),
        migrations.RemoveField(
            model_name='teacherattendance',
            name='Teacher',
        ),
        migrations.RemoveField(
            model_name='teacherattendance',
            name='dept',
        ),
        migrations.DeleteModel(
            name='studentAttendance',
        ),
        migrations.DeleteModel(
            name='TeacherAttendance',
        ),
    ]
