from django.db import models
from apps.materia.models import *
from apps.profesor.models import *
from apps.estudiante.models import *
from apps.mes.models import *

# Create your models here.

class Nota(models.Model):
	estudiante = models.ForeignKey(Estudiante, on_delete = models.CASCADE)
	materia = models.ForeignKey(Materia, on_delete = models.CASCADE)
	profesor = models.ForeignKey(Profesor, on_delete = models.CASCADE)
	mes = models.ForeignKey(Mes, on_delete=models.CASCADE)
	examen1 = models.DecimalField(max_digits=4, decimal_places=2)
	examen2 = models.DecimalField(max_digits=4, decimal_places=2)
	examen3 = models.DecimalField(max_digits=4, decimal_places=2)
	notaMes = models.DecimalField(max_digits=4, decimal_places=2)