from django import forms

class ContactForm(forms.Form):
    name = forms.CharField(max_length=200, label='Name') # label same in html
    email = forms.EmailField(label='Email')
    message = forms.CharField(label='Message')


class MyPost(forms.Form):
    title = forms.CharField(label='Title', max_length=100, required=True)
    content = forms.CharField(label='Content', max_length=1000, required=True)
    img_url = forms.URLField(label='Img_url', required=False)
    category = forms.IntegerField(label='Category', required=False)
    
class Category(forms.Form):
    category = forms.CharField(label='Category',required=True,max_length=50)
    