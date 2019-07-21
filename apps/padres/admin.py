from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('nombre','apellido','sexo','direccion','cel','tipo')

admin.site.register(Padre,Admin)