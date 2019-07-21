from django.db import models
from apps.grado.models import *
from apps.profesor.models import *
# Create your models here.


class Horario(models.Model):
	dia = models.CharField(max_length=12)
	grado = models.ForeignKey(Grado, on_delete=models.CASCADE)
	primero =  models.CharField(max_length=12)
	segundo =  models.CharField(max_length=12)
	tercero =  models.CharField(max_length=12)
	cuarto =  models.CharField(max_length=12)
	quinto =  models.CharField(max_length=12)
	sexo =  models.CharField(max_length=12)

	def __str__(self):
		return self.grado

class HorarioProfesor(models.Model):
	dia = models.CharField(max_length=12)
	profesor = models.ForeignKey(Profesor, on_delete=models.CASCADE)
	primero = models.BooleanField()
	segundo = models.BooleanField()
	tercero = models.BooleanField()
	cuarto = models.BooleanField()
	quinto = models.BooleanField()
	sexo = models.BooleanField()

	def __str__(self):
		return self.profesor