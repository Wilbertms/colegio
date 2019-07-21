from django.db import models
from apps.grado.models import *

# Create your models here.

class Estudiante(models.Model):
	carnet = models.CharField(max_length=5, primary_key= True)
	nombre = models.CharField(max_length=25)
	apellido = models.CharField(max_length=25)
	sexo = models.CharField(max_length=1)
	direccion = models.CharField(max_length=255)
	foto = models.ImageField()
	grado = models.ForeignKey(Grado, on_delete=models.CASCADE)

	def __str__(self):
		return self.carnet