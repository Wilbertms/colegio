from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('padre','estudiante')

admin.site.register(PadreEstudiante,Admin)