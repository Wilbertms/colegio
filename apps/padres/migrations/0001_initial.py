# Generated by Django 2.0.5 on 2019-07-12 00:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('tipo', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Padre',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=25)),
                ('apellido', models.CharField(max_length=25)),
                ('sexo', models.CharField(max_length=1)),
                ('direccion', models.CharField(max_length=100)),
                ('cel', models.CharField(max_length=8)),
                ('tipo', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='tipo.Tipo')),
            ],
        ),
    ]
