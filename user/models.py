from django.db import models

# Create your models here.


class CpcUser(models.Model):
    userName = models.CharField(max_length=16)
    email = models.CharField(max_length=100)
    password = models.CharField(max_length=32)
    ipAddress = models.CharField(max_length=15)
    createAt = models.IntegerField(max_length=10)
    updateAt = models.IntegerField(max_length=10)

    class Meta:
        db_table = 'cpc_user'


class CpcUserInfo(models.Model):
    uAvatar = models.CharField(max_length=255)
    schoolId = models.SmallIntegerField(max_length=5)
    gender = models.SmallIntegerField(max_length=1, null=True, blank=True)
    createAt = models.IntegerField(max_length=10, null=True, blank=True)
    updateAt = models.IntegerField(max_length=10)

    class Meta:
        db_table = 'cpc_userinfo'