from django.shortcuts import render
from django.contrib import messages
from .models import Room
from django.contrib.auth.models import User

# Create your views here.

#rooms = [
#    {'id': 1, 'name': 'Lets learn python'},
#    {'id': 2, 'name': 'Design with me'},
#    {'id': 3, 'name': 'Fronted Developers'},
#]

def loginPage(request):

    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        try:
            user = User.objects.get(username=username)
        except:
            message.error(request, 'Numele de utilizator nu există')

    context ={}
    return render(request, 'base/login_register.html', context)


def home(request):
    rooms = Room.objects.all()
    context = {'rooms': rooms}
    return render(request, 'base/home.html', context)


def room(request, pk):
    room = Room.objects.get(id=pk)
    context = {'room': room}
    return render(request, 'base/room.html', context)
