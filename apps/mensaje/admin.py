from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('titulo','cuerpo','fecha','leido','emisor','reseptor')

admin.site.register(Mensaje,Admin)