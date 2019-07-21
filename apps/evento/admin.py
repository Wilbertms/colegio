from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('titulo','cuerpo','imagen','fecha','fechaInicio','fechaFin','dias','publicado')

admin.site.register(Evento,Admin)