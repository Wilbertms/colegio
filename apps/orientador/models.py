from django.db import models
from apps.profesor.models import *
from apps.grado.models import *

# Create your models here.

class Orientador(models.Model):
	orientador = models.OneToOneField(Profesor, on_delete=models.CASCADE, unique = True)
	grado = models.OneToOneField(Grado, on_delete=models.CASCADE, unique = True)
	
	def __str__(self):
		return self.orientador