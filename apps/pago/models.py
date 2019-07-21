from django.db import models
from apps.mes.models import *
from apps.estudiante.models import *

# Create your models here.

class Pago(models.Model):
	mes = models.ForeignKey(Mes, on_delete=models.CASCADE)
	estudiante = models.ForeignKey(Estudiante, on_delete=models.CASCADE)
	fechaPagada = models.DateField()
	cantidad = models.DecimalField(max_digits=4, decimal_places=2)