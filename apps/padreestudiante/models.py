from django.db import models
from apps.padres.models import *
from apps.estudiante.models import *
# Create your models here.

class PadreEstudiante(models.Model):
	padre = models.ForeignKey(Padre, on_delete =models.CASCADE)
	estudiante = models.ForeignKey(Estudiante, on_delete =models.CASCADE)