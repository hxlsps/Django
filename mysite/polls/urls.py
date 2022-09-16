from django.urls import path
from . import views

#Define a path to View
urlpatterns = [
    path('', views.index, name = 'index')
]