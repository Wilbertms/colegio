from django.contrib import admin
from .models import *
# Register your models here.

class Admin(admin.ModelAdmin):
	list_display = ('conducta','mes','estudiante','observacion')

admin.site.register(AspectoConducta,Admin)