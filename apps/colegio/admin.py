from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('codigo','nombre','direcion','telefono')

admin.site.register(Colegio,Admin)