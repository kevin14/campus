from django.db import models

# Create your models here.


class CpcArea(models.Model):
    areaName = models.CharField(max_length=30)
    createAt = models.IntegerField(max_length=10)
    updateAt = models.IntegerField(max_length=10)

    class Meta:
        db_table = 'cpc_area'


class CpcCity(models.Model):
    city = models.CharField(max_length=50)

    class Meta:
        db_table = 'cpc_city'


class CpcSchools(models.Model):
    schoolName = models.CharField(max_length=30)
    area = models.IntegerField(max_length=10)

    class Meta:
        db_table = 'cpc_schools'


class CpcClassify(models.Model):
    className = models.CharField(max_length=30)
    gNumbers = models.IntegerField(max_length=10)

    class Meta:
        db_table = 'cpc_classify'