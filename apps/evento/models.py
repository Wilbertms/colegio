from django.db import models
from apps.administrador.models import *

# Create your models here.

class Evento(models.Model):
	titulo = models.CharField(max_length=25)
	cuerpo = models.CharField(max_length=255)
	imagen = models.ImageField()
	fecha = models.DateField()
	fechaInicio = models.DateField()
	fechaFin = models.DateField()
	dias = models.IntegerField()
	visible = models.BooleanField()
	publicado = models.ForeignKey(Administrador, on_delete = models.CASCADE)