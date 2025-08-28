from django import forms

class ContactForm(forms.Form):
    name = forms.CharField(max_length=200, label='Name') # label same in html
    email = forms.EmailField(label='Email')
    message = forms.CharField(label='Message')