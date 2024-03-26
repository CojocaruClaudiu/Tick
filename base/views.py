from django.shortcuts import render, redirect
from django.contrib import messages
from .models import Room
from django.contrib.auth.models import User
from django.contrib.auth import authenticate, login, logout

# Create your views here.


def loginPage(request):

    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        try:
            user = User.objects.get(username=username)
        except:
            messages.error(request, 'Numele de utilizator nu există')

        user = authenticate(request, username=username, password=password)

        if user is not None:    
            login(request, user)
            return redirect('home')
        else:
            messages.error(request, 'Numele de utilizator sau parola sunt greșite')
    context = {}
    return render(request, 'base/login_register.html', context)


def logoutuser (request):
    logout(request)
    return redirect('home')


def home(request):
    rooms = Room.objects.all()
    context = {'rooms': rooms}
    return render(request, 'base/home.html', context)


def room(request, pk):
    room = Room.objects.get(id=pk)
    context = {'room': room}
    return render(request, 'base/room.html', context)
