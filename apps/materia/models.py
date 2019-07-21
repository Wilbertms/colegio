from django.db import models
from apps.grado.models import *

# Create your models here.

class Materia(models.Model):
	nombre = models.CharField(max_length = 25)
	grado = models.ForeignKey(Grado, on_delete=models.CASCADE)
	tipo = models.CharField(max_length = 13)

	def __str__(self):
		return self.nombre, self.profesor