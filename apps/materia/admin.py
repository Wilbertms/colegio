from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('nombre','grado')	
	
admin.site.register(Materia,Admin)