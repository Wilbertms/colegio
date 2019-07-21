from django.urls import path
from .views import *

urlpatterns = [
    path('base',index,name = 'base'),
    path('',inicio,name = 'inicio'),
    path('login/',login,name = 'login'),
]