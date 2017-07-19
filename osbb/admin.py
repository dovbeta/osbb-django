from django.contrib import admin

from osbb.models import ApartmentType, Apartment, MeterType, Meter, Person, Service, PersonalAccount
from nested_inline.admin import NestedModelAdmin, NestedTabularInline, NestedStackedInline

admin.site.register(ApartmentType)
admin.site.register(MeterType)
admin.site.register(Meter)


class MeterInline(admin.TabularInline):
    model = Meter
    extra = 0
    classes = ['collapse']

    def has_delete_permission(self, request, obj=None):
        return False


class PersonsInline(admin.TabularInline):
    model = Apartment.persons.through
    extra = 0
    can_delete = False
    verbose_name_plural = 'Roommates'
    classes = ['collapse']


class PersonAdmin(admin.ModelAdmin):
    search_fields = ('last_name',)


class ServicesInline(NestedTabularInline):
    model = Service.personal_accounts.through
    #readonly_fields = ['service']
    extra = 0
    #can_delete = False
    verbose_name = 'Personal Service'
    verbose_name_plural = 'Personal Services'


class PersonalAccountInline(NestedStackedInline):
    model = PersonalAccount
    extra = 0
    can_delete = False
    #readonly_fields = ('number',)
    inlines = [ServicesInline]
    verbose_name_plural = 'Personal account'

    def has_add_permissiodn(self, request):
        return False


class ApartmentAdmin(NestedModelAdmin):
    fields = ['number', 'area', 'rooms_number']
    list_filter = ['entrance', 'floor', 'rooms_number']
    list_display = ['number',  'owner', 'entrance', 'floor', 'area', 'rooms_number']
    search_fields = ['number']
    inlines = [PersonalAccountInline, PersonsInline, MeterInline]
    ordering = ['number']
    exclude = ('persons',)


class ServiceAdmin(admin.ModelAdmin):
    exclude = ('personal_accounts',)


admin.site.register(Apartment, ApartmentAdmin)
admin.site.register(Person, PersonAdmin)
admin.site.register(Service, ServiceAdmin)
admin.site.register(PersonalAccount)