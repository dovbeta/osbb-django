from django.contrib import admin

from osbb.models import ApartmentType, Apartment, MeterType, Meter

admin.site.register(ApartmentType)
admin.site.register(MeterType)
admin.site.register(Meter)

class MeterInline(admin.TabularInline):
    model = Meter
    extra = 0

class ApartmentAdmin(admin.ModelAdmin):
    fields = ['number', 'area', 'rooms_number']
    list_filter = ['entrance', 'floor', 'rooms_number']
    search_fields = ['number']
    inlines = [MeterInline]

admin.site.register(Apartment, ApartmentAdmin)