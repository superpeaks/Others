from django.shortcuts import render
from django.http import HttpResponse, Http404
from . import forms

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
    if request.method == 'post':
        if forms.ContactForm.post.is_valid():
            print(forms.ContactForm.post)
    return render(request, "inside/contact.html")