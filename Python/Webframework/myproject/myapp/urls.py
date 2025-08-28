from django.urls import path
from . import views


urlpatterns = [
    path("home/", views.home, name= "home"),
    path("details/",views.details,name='details'),
    path("contact/",views.contact,name="contact"),
    path("contact/sucess",views.contact_sucess,name='contact_sucess')
]