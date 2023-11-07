from django.shortcuts import render
from django.http import HttpResponse

from django.views.generic import View
from django.http import JsonResponse
from django import forms
from django.views.decorators.csrf import csrf_exempt
from django.utils.decorators import method_decorator
from django.forms.models import model_to_dict
from django.db.models import Max
from django.db import transaction
from .models import *
import json
import re

# Create your views here.
def index (request) :
    data = {}
    return render(request, 'index/index.html', data)

class PaymentList (View):
    def get(self, request):
        payments = list(Payment.objects.all().values())
        data = dict()
        data['payments'] = payments

        return JsonResponse(data)

class ProductList (View):
    def get(self, request):
        products = list(Product.objects.all().values())
        data = dict()
        data['products'] = products

        return JsonResponse(data)
    
class ProductTypeList (View) :
    def get(self, request):
        producttypes = list(ProductType.objects.all().values())
        data = dict()
        data['producttypess'] =  producttypes

        return JsonResponse(data)