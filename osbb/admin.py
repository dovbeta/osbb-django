from django.contrib import admin

from osbb.models import ApartmentType, Apartment, MeterType, Meter, Person

admin.site.register(ApartmentType)
admin.site.register(MeterType)
admin.site.register(Meter)

class MeterInline(admin.TabularInline):
    model = Meter
    extra = 0

    def has_delete_permission(self, request, obj=None):
        return False


class PersonsInline(admin.TabularInline):
    model = Apartment.persons.through
    extra = 0


class PersonAdmin(admin.ModelAdmin):
    inlines = [
        PersonsInline,
    ]


class ApartmentAdmin(admin.ModelAdmin):
    fields = ['number', 'area', 'rooms_number']
    list_filter = ['entrance', 'floor', 'rooms_number']
    list_display = ['number',  'owner', 'entrance', 'floor', 'area', 'rooms_number']
    search_fields = ['number']
    inlines = [PersonsInline, MeterInline]
    ordering = ['number']
    exclude = ('persons',)

admin.site.register(Apartment, ApartmentAdmin)
admin.site.register(Person, PersonAdmin)