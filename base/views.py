from django.shortcuts import render, redirect
from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.forms import UserCreationForm, AuthenticationForm
import logging

# Configure logger for the app
logger = logging.getLogger(__name__)


def registerPage(request):
    form = UserCreationForm()
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            user = form.save(commit=False)
            user.username = user.username.lower()
            user.save()
            login(request, user)
            logger.info(f"Registration successful for user: {user.username}")
            return redirect('home')
        else:
            logger.warning(f"Registration failed due to form errors: {form.errors}")
            messages.error(request, 'An error occurred during registration')
    return render(request, 'base/login_register.html', {'form': form})


def login_register_page(request):
    if request.method == 'POST':
        form_type = request.POST.get('form_type')

        if request.POST.get('submit') == 'sign_in':
            # Process the sign-in form
            username = request.POST.get('username', '').lower()
            password = request.POST.get('password', '')
            user = authenticate(request, username=username, password=password)
            if user is not None:
                login(request, user)
                logger.info(f"Login successful for user: {username}")
                return redirect('home')
            else:
                messages.error(request, 'Username or password is incorrect')
                logger.warning(f"Login failed for user: {username}")
        elif request.POST.get('submit') == 'sign_up':
            # Process the sign-up form
            form = UserCreationForm(request.POST)
            if form.is_valid():
                user = form.save(commit=False)
                user.username = user.username.lower()
                user.save()
                login(request, user)
                logger.info(f"Registration successful for user: {user.username}")
                return redirect('home')
            else:
                messages.error(request, 'An error occurred during registration')
                logger.warning(f"Registration failed due to form errors: {form.errors}")
        # Redirect back to the same page to show form with potential error messages
        return redirect('login_register')
    else:
        # When request method is not POST, show the default page with both forms
        login_form = AuthenticationForm()
        register_form = UserCreationForm()
        return render(request, 'base/login_register.html', {'login_form': login_form, 'register_form': register_form})



def logoutUser(request):
    logger.info("User logged out")
    logout(request)
    return redirect('home')


def home(request):
    logger.debug("Home page accessed")
    return render(request, 'base/home.html')
