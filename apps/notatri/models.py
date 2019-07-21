from django.db import models
from apps.notas.models import *
from apps.estudiante.models import *
from apps.materia.models import *
# Create your models here.

class NotaTri(models.Model):
	estudiante = models.ForeignKey(Estudiante, on_delete=models.CASCADE)
	notaTrimestral = models.DecimalField(max_digits=4, decimal_places=2)
	trimestre = models.IntegerField()
	materia = models.ForeignKey(Materia, on_delete=models.CASCADE)

	def __str__(self):
		return (self.estudiante, self.materia)