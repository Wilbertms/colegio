from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('grado','nombre','seccion','ciclo')	

admin.site.register(Grado,Admin)