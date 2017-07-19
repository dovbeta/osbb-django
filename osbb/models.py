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

    def owner(self):
        qs = self.persons.filter(is_owner=True)
        if len(qs) > 0:
            return qs[0]
        else:
            return None


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


class Person(models.Model):
    first_name = models.CharField(max_length=100)
    middle_name = models.CharField(max_length=100)
    last_name = models.CharField(max_length=100)
    apartments = models.ManyToManyField(Apartment, related_name='persons')
    is_owner = models.BooleanField(default=False)

    def __str__(self):
        return self.last_name + ' ' + self.first_name + (' (owner)' if self.is_owner else '')


class PersonalAccount(models.Model):
    apartment = models.OneToOneField(Apartment, on_delete=models.CASCADE, primary_key=True)
    number = models.CharField(max_length=20)


class Balance(models.Model):
    personal_account = models.ForeignKey(PersonalAccount, on_delete=models.CASCADE)
    date = models.DateTimeField(auto_now=True)
    value = models.FloatField()


class OrgAccount(models.Model):
    title = models.CharField(max_length=20)
    number = models.CharField(max_length=20)


class OrgBalance(models.Model):
    org_account = models.ForeignKey(OrgAccount, on_delete=models.CASCADE)
    date = models.DateTimeField(auto_now=True)
    value = models.FloatField()


class Payment(models.Model):
    personal_account = models.ForeignKey(PersonalAccount, on_delete=models.CASCADE)
    org_account = models.ForeignKey(OrgAccount, on_delete=models.CASCADE)
    date = models.DateTimeField(auto_now=True)
    value = models.FloatField()


class OrgCost(models.Model):
    org_account = models.ForeignKey(OrgAccount, on_delete=models.CASCADE)
    date = models.DateTimeField(auto_now=True)
    value = models.FloatField()
    receiver = models.CharField(max_length=100)
    comment = models.CharField(max_length=200)


class Service(models.Model):
    personal_accounts = models.ManyToManyField(PersonalAccount)
    title = models.CharField(max_length=200)
    tariff = models.FloatField(default=0)
    formula = models.CharField(max_length=200)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)


class Accrual(models.Model):
    personal_account = models.ForeignKey(PersonalAccount, on_delete=models.CASCADE)
    date = models.DateTimeField(auto_now=True)


class AccrualDetail(models.Model):
    accrual = models.ForeignKey(Accrual, on_delete=models.CASCADE)
    service = models.ForeignKey(Service, on_delete=models.CASCADE)
    value = models.FloatField()
    date = models.DateTimeField(auto_now=True)
