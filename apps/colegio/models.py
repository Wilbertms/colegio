from django.db import models

# Create your models here.

class Colegio(models.Model):
	codigo = models.CharField(max_length=25)
	nombre = models.CharField(max_length=25)
	direcion = models.CharField(max_length=100)
	telefono = models.CharField(max_length=8)