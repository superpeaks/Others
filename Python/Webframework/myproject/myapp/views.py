from django.shortcuts import render, redirect
from django.http import HttpResponse, Http404
from .forms import ContactForm, MyPost, Category
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


def post(request):
    if request.method == "POST":
        form = MyPost(request.POST)

        if form.is_valid():
            MyPost.objects.create(
                title = form.cleaned_data['title'],
                content = form.cleaned_data['content'],
                img_url = form.cleaned_data['img_url'],
                category = form.cleaned_data['category']
            )
            return redirect('contact_sucess')
    else:
        form = MyPost()
            
    content = {'title':'My Blog post insert update page',
            'header_title':'Add/Change post',
            'form':form}
    return render(request,'inside/post.html',content)

def category(request):
    if request.method == "POST":
        form = Category(request.POST)

        if form.is_valid():
            Category.objects.create(
                category = form.cleaned_data['category']
            )

    content = {'title':'My Blog category insert update page',
            'header_title':'Add/Change category'}
    return render(request,'inside/category.html',content)

def root(request):
    return redirect('home')
    