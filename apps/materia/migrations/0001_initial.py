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
            name='Materia',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=25)),
                ('tipo', models.CharField(max_length=13)),
                ('grado', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='grado.Grado')),
            ],
        ),
    ]
