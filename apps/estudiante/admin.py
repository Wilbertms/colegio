from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('carnet','foto','nombre','apellido','sexo','direccion','grado')

admin.site.register(Estudiante,Admin)