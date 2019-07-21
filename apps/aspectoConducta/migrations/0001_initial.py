# Generated by Django 2.0.5 on 2019-07-12 00:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('estudiante', '0001_initial'),
        ('mes', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='AspectoConducta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('conducta', models.CharField(max_length=2)),
                ('observacion', models.CharField(default='-', max_length=255)),
                ('estudiante', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='estudiante.Estudiante')),
                ('mes', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='mes.Mes')),
            ],
        ),
    ]
