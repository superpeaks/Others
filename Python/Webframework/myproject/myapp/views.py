from django.shortcuts import render, redirect
from django.http import HttpResponse, Http404
from .forms import ContactForm
from .models import MyAppForm

# Create your views here.

def home(request):
    content = {'title':'My Blog Home Page',
               'header_title':'My Header Title'}
    return render(request, 'inside/index.html',context=content)

def details(request):
    content = {'title':'My Blog Home Page',
               'header_title':'My Header Title'}
    return render(request, 'inside/detail.html',content)
    # return HttpResponse(post_id)

def contact(request):
    
    if request.method == "POST":
        form = ContactForm(request.POST)

        if form.is_valid():
            MyAppForm.objects.create(
                name = form.cleaned_data['name'],
                email = form.cleaned_data['email'],
                message = form.cleaned_data['message'],
            )
            return redirect('contact_sucess')
    else:
        form = ContactForm()
    
    content = {'title':'My Blog Contact Page',
            'header_title':'My Contact Title',
            'form':form}
    return render(request, "inside/contact.html",content)

def contact_sucess(request):
    content = {'title':'My Blog sucess Page',
            'header_title':'My sucess Title'}
    return render(request,'inside/contact_sucess.html',content)