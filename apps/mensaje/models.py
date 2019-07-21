from django.db import models
from apps.administrador.models import *
from apps.padres.models import *

# Create your models here.

class Mensaje(models.Model):
	titulo = models.CharField(max_length = 25)
	cuerpo = models.CharField(max_length = 255)
	fecha = models.DateField()
	leido = models.BooleanField()
	emisor =models.ForeignKey(Administrador, on_delete=models.CASCADE)
	reseptor =models.ForeignKey(Padre, on_delete=models.CASCADE)