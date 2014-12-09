from django.db import models

# Create your models here.


class CpcGoods(models.Model):
    uid = models.IntegerField(max_length=10)
    gname = models.CharField(max_length=16)
    gdesc = models.TextField()
    gprice = models.IntegerField(max_length=10)
    mobile = models.IntegerField(max_length=15)
    status = models.SmallIntegerField(max_length=1)
    place = models.CharField(max_length=20, default=0)
    browserNum = models.IntegerField(max_length=10)
    classify = models.SmallIntegerField(max_length=2)
    gpicUrl = models.CharField(max_length=100)
    createAt = models.IntegerField(max_length=10)
    updateAt = models.IntegerField(max_length=10)


class CpcPics(models.Model):
    picUrl = models.CharField(max_length=30)
    createAt = models.IntegerField(max_length=10)
    updateAt = models.IntegerField(max_length=10)


class CpcComments(models.Model):
    uid = models.IntegerField(max_length=10)
    gid = models.IntegerField(max_length=10)
    comments = models.CharField(max_length=255)
    pid = models.IntegerField(max_length=10)
    createAt = models.IntegerField(max_length=10)
    updateAt = models.IntegerField(max_length=10)