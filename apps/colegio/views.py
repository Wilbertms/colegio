from django.shortcuts import render

# Create your views here.

def index(request):
	return render(request, 'base.html')

def inicio(request):
	return render(request, 'inicio.html')

def login(request):
	return render(request, 'login.html')