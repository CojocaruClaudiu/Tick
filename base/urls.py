from django.urls import path
from . import views

urlpatterns = [
    path('login/', views.loginPage, name='login'),
    path('logout/', views.logoutuser, name='logout'),
    path('', views.home, name="home"),
    path('room/<str:pk>/', views.room, name="room"),
]
