from django.db import models

class ApartmentType(models.Model):
    text = models.CharField(max_length=100)

    def __str__(self):
        return self.text


class Apartment(models.Model):
    type = models.ForeignKey(ApartmentType, on_delete=models.CASCADE)
    number = models.CharField(max_length=5)
    entrance = models.IntegerField()
    floor = models.IntegerField()
    area = models.FloatField()
    rooms_number = models.IntegerField()

    def __str__(self):
        return self.number


class MeterType(models.Model):
    text = models.CharField(max_length=100)
    uom = models.CharField(max_length=100)

    def __str__(self):
        return self.text


class Meter(models.Model):
    type = models.ForeignKey(MeterType, on_delete=models.CASCADE)
    apartment = models.ForeignKey(Apartment, on_delete=models.CASCADE)
    number = models.CharField(max_length=50)
    valid_date = models.DateField('validation date')

    def __str__(self):
        return self.apartment.number


class Measurement(models.Model):
    meter = models.ForeignKey(Meter, on_delete=models.CASCADE)
    value = models.IntegerField()
    pub_date = models.DateTimeField('publication date')

    def __str__(self):
        return self.value;
