from django.db import models

# Create your models here.

class Mes(models.Model):
	codigo = models.IntegerField()
	nombre = models.CharField(max_length=10)
	trimestre = models.IntegerField()

	def __str__(self):
		return self.nombre