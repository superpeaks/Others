from django.db import models
# from django.db.models import Model 

# Create your models here.
class mydjangodata(models.Model):
    title = models.CharField(max_length=100)
    centent = models.TextField()
    img_url = models.URLField(null=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.title
    

class MyAppForm(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    message = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name