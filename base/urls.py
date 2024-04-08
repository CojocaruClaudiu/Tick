from django.urls import path
from . import views

urlpatterns = [
    # Combined login and registration page
    path('login_register/', views.login_register_page, name='login_register'),
    # Logout
    path('logout/', views.logoutUser, name='logout'),
    # Home page
    path('', views.home, name="home"),
    # Add any other URLs you need for your application
]
