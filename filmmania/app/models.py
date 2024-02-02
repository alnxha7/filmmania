from django.db import models

# Create your models here.

class Login(models.Model):
    email = models.EmailField(max_length=100, null=True)
    password = models.CharField(max_length=100, null=True)
    userType = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True, default="pending")
    
class Userregister(models.Model):
    userid = models.ForeignKey(Login, on_delete=models.CASCADE, null=True)
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(max_length=100, null=True)
    phone = models.CharField(max_length=100, null=True)
    password = models.CharField(max_length=100, null=True)
    address = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True, default="approved")

class Criticsregister(models.Model):
    critid = models.ForeignKey(Login, on_delete=models.CASCADE, null=True)
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(max_length=100, null=True)
    phone = models.CharField(max_length=100, null=True)
    password = models.CharField(max_length=100, null=True)
    address = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True, default="pending")

class Aspirantsregister(models.Model):
    aspid = models.ForeignKey(Login, on_delete=models.CASCADE, null=True)
    name = models.CharField(max_length=100, null=True)
    email = models.EmailField(max_length=100, null=True)
    phone = models.CharField(max_length=100, null=True)
    password = models.CharField(max_length=100, null=True)
    address = models.CharField(max_length=100, null=True)
    status = models.CharField(max_length=100, null=True, default="pending")

class Addmovies(models.Model):
    name = models.CharField(max_length=100, null=True)
    duration = models.CharField(max_length=100, null=True)
    image = models.ImageField(max_length=100, null=True)
    likes = models.IntegerField(max_length=100, null=True, default="0")
    dislikes = models.IntegerField(max_length=100, null=True, default="0")

class Addvideos(models.Model):
    aspid =models.ForeignKey(Aspirantsregister, on_delete=models.CASCADE, null=True)
    name = models.CharField(max_length=100, null=True)
    video = models.FileField(max_length=100, null=True)
    likes = models.IntegerField(max_length=100, null=True, default="0")
    dislikes = models.IntegerField(max_length=100, null=True, default="0")

class Addmoviereview(models.Model):
    critid = models.ForeignKey(Criticsregister, on_delete=models.CASCADE, null=True)
    moviename = models.CharField(max_length=100, null=True)
    pdf = models.CharField(max_length=100, null=True)
    
class Useraddmoviereview(models.Model):
    userid = models.ForeignKey(Userregister, on_delete=models.CASCADE, null=True)
    moviename = models.CharField(max_length=100, null=True)
    comment = models.FileField(max_length=100, null=True)
    
class Addvideoreview(models.Model):
    critid = models.ForeignKey(Criticsregister, on_delete=models.CASCADE, null=True)
    videoname = models.CharField(max_length=100, null=True)
    pdf = models.FileField(max_length=100, null=True)
    replay = models.CharField(max_length=100, null=True)

class Useraddvideoreview(models.Model):
    userid = models.ForeignKey(Userregister, on_delete=models.CASCADE, null=True)
    videoname = models.CharField(max_length=100, null=True)
    comment = models.CharField(max_length=50, null=True)
    replay = models.CharField(max_length=100, null=True)

class Messageuser(models.Model):
    userid = models.ForeignKey(
        Userregister, on_delete=models.CASCADE, null=True)
    aspid = models.ForeignKey(
        Aspirantsregister, on_delete=models.CASCADE, null=True)
    message = models.CharField(max_length=100, null=True)
    replay = models.CharField(max_length=100, null=True)

class Like(models.Model):
    critid = models.ForeignKey(
        Criticsregister, on_delete=models.CASCADE, null=True)
    mid = models.ForeignKey(Addmovies, on_delete=models.CASCADE, null=True)
    type = models.CharField(max_length=100, null=True, default="0")

class videolike(models.Model):
    critid = models.ForeignKey(Criticsregister, on_delete=models.CASCADE, null=True)
    vid = models.ForeignKey(Addvideos, on_delete=models.CASCADE, null=True)
    type = models.CharField(max_length=100, null=True, default="0")


class Usrlike(models.Model):
    userid = models.ForeignKey(Userregister, on_delete=models.CASCADE, null=True)
    mid = models.ForeignKey(Addmovies, on_delete=models.CASCADE, null=True)
    type = models.CharField(max_length=100, null=True, default="0")

class Uservideolike(models.Model):
    userid = models.ForeignKey(Userregister, on_delete=models.CASCADE, null=True)
    vid = models.ForeignKey(Addvideos, on_delete=models.CASCADE, null=True)
    type = models.CharField(max_length=100, null=True, default="0")