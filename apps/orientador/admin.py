from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('orientador','grado')

admin.site.register(Orientador,Admin)