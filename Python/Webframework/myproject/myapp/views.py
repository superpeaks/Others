from django.shortcuts import render
from django.http import HttpResponse, Http404

# Create your views here.


def home(request):
    content = {'title':'My Blog Home Page',
               'header_title':'My Header Title'}
    return render(request, 'inside/index.html',context=content)

def details(request):
    content = {'title':'My Blog Home Page',
               'header_title':'My Header Title'}
    return render(request, 'inside/detail.html',content)