from django.db import models
from django.utils.text import slugify
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
    
class Category(models.Model):
    name = models.CharField(max_length=50)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.name

class MyPost(models.Model):
    titles = models.CharField(max_length=100)
    content = models.TextField()
    img_urls = models.ImageField()
    Category = models.ForeignKey('myapp.Category', on_delete= models.CASCADE)
    slug_name = models.SlugField(unique=True)

    def slug_create(self, *args, **kwargs):
        self.slug_name = slugify(self.titles)
        super().save(*args, **kwargs)
    
    def __str__(self):
        return self.titles