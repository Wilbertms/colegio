from django.db import models
from apps.tipo.models import *
# Create your models here.

class Padre(models.Model):
	nombre = models.CharField(max_length=25)
	apellido = models.CharField(max_length=25)
	sexo = models.CharField(max_length=1)
	direccion = models.CharField(max_length=100)
	cel = models.CharField(max_length=8)
	tipo = models.ForeignKey(Tipo, on_delete=models.CASCADE)

	def __str__(self):
		return self.nombre