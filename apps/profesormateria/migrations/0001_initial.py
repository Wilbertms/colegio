# Generated by Django 2.0.5 on 2019-07-12 00:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('materia', '0001_initial'),
        ('profesor', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProfesorMateria',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('materia', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='materia.Materia')),
                ('profesor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='profesor.Profesor')),
            ],
        ),
    ]
