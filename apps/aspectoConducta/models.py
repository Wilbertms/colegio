from django.db import models
from apps.mes.models import *
from apps.estudiante.models import *

# Create your models here.

class AspectoConducta(models.Model):
	conducta = models.CharField(max_length=2)
	mes = models.ForeignKey(Mes, on_delete=models.CASCADE)
	estudiante = models.ForeignKey(Estudiante, on_delete=models.CASCADE)
	observacion = models.CharField(max_length=255, default = '-')