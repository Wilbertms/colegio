from django.db import models

# Create your models here.

class Administrador(models.Model):
	user = models.CharField(max_length=5, primary_key= True)
	nombre = models.CharField(max_length=25)
	apellido = models.CharField(max_length=25)
	sexo = models.CharField(max_length=1)
	direccion = models.CharField(max_length=100)
	cel = models.CharField(max_length=8)

	def __str__(self):
		return self.nombre