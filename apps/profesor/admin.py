from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('user','nombre','apellido','sexo','direccion','cel')

admin.site.register(Profesor,Admin)