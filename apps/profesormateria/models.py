from django.db import models
from apps.profesor.models import *
from apps.materia.models import *

# Create your models here.
class ProfesorMateria(models.Model):
	profesor = models.ForeignKey(Profesor, on_delete=models.CASCADE)
	materia = models.ForeignKey(Materia, on_delete=models.CASCADE)

	def __str__(self):
		return (self.profesor, self.materia)