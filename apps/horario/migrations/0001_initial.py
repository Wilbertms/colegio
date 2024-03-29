# Generated by Django 2.0.5 on 2019-07-12 02:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('grado', '0001_initial'),
        ('profesor', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Horario',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dia', models.CharField(max_length=12)),
                ('primero', models.CharField(max_length=12)),
                ('segundo', models.CharField(max_length=12)),
                ('tercero', models.CharField(max_length=12)),
                ('cuarto', models.CharField(max_length=12)),
                ('quinto', models.CharField(max_length=12)),
                ('sexo', models.CharField(max_length=12)),
                ('grado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='grado.Grado')),
            ],
        ),
        migrations.CreateModel(
            name='HorarioProfesor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('dia', models.CharField(max_length=12)),
                ('primero', models.BooleanField()),
                ('segundo', models.BooleanField()),
                ('tercero', models.BooleanField()),
                ('cuarto', models.BooleanField()),
                ('quinto', models.BooleanField()),
                ('sexo', models.BooleanField()),
                ('profesor', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='profesor.Profesor')),
            ],
        ),
    ]
