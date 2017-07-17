from django.contrib import admin

from osbb.models import ApartmentType, Apartment

admin.site.register(ApartmentType)
admin.site.register(Apartment)
