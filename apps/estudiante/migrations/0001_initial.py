# Generated by Django 2.0.5 on 2019-07-12 00:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('grado', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Estudiante',
            fields=[
                ('carnet', models.CharField(max_length=5, primary_key=True, serialize=False)),
                ('nombre', models.CharField(max_length=25)),
                ('apellido', models.CharField(max_length=25)),
                ('sexo', models.CharField(max_length=1)),
                ('direccion', models.CharField(max_length=255)),
                ('foto', models.ImageField(upload_to='')),
                ('grado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='grado.Grado')),
            ],
        ),
    ]
