from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('codigo','nombre','trimestre')

admin.site.register(Mes,Admin)