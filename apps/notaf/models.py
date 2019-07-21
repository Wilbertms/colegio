from django.db import models
from apps.estudiante.models import *
from apps.materia.models import *
# Create your models here.

class NotaF(models.Model):
	estudiante = models.ForeignKey(Estudiante, on_delete=models.CASCADE)
	materia = models.ForeignKey(Materia, on_delete=models.CASCADE)
	notafinal = models.DecimalField(max_digits=4, decimal_places=2)
	aprobado = models.BooleanField()