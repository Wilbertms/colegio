from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('estudiante','notaTrimestral','trimestre','materia')

admin.site.register(NotaTri, Admin)