from django.db import models
# Create your models here.

class Grado(models.Model):
	grado = models.CharField(max_length = 1)
	nombre = models.CharField(max_length = 10)
	seccion = models.CharField(max_length = 2)
	ciclo = models.CharField(max_length = 1)

	def __str__(self):
		return (self.nombre,self.seccion)