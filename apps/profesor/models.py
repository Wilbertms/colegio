from django.db import models
from apps.materia.models import *

# Create your models here.

class Profesor(models.Model):
	user = models.CharField(max_length=5)
	nombre = models.CharField(max_length=25)
	apellido = models.CharField(max_length=25)
	sexo = models.CharField(max_length=1)
	direccion = models.CharField(max_length=255)
	cel = models.CharField(max_length=8)

	def __str__(self):
		return self.nombre