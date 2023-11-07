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
def index(request) :
    data = {}
    return render(request, 'index/index.html', data)

# class PaymentList(View):
class PaymentList(View):
    def get(self, request):
        payments = list(Payment.objects.all().values())
        data = dict()
        data['payments'] = payments

        return JsonResponse(data)

# class ProductList(View) :
class ProductList(View):
    def get(self, request):
        products = list(Product.objects.all().values())
        data = dict()
        data['products'] = products

        return JsonResponse(data)

# class ProductDetail(View);
class ProductDetail(View):
    def get(self, request, pk, pk2):

        product_type = pk + '/' + pk2

        product = list(Product.objects.select_related('customer_code')
            .filter(product_type=product_type)
            .values('product_code', 'product_name', 'animal_type', 'product_price', 'product_type'))
        ProductType = list(ProductType.objects.select_related('product_code')
            .filter(product_type=product_type)
            .values('product_type', 'product_description'))

        data = dict()
        data['product'] = product
        data['producttype'] = ProductType

        return JsonResponse(data)


















class ProductDetail(View):
    def get(self, request, pk, pk2):

        product_code = pk + '/' + pk2

        Product = list(Product.objects.select_related('animal_type')
            .filter(product_type=product_type)
            .values('product_code', 'product_name', 'animal_type', 'product_price', 'product_type'))
        Producttype = list(productLineItem.objects.select_related('product_code')
            .filter(product_code=product_code)
            .values('invoice_no', 'item_no', 'product_code', 'product_code__name', 'unit_price'
            , 'quantity', 'product_total'))

        data = dict()
        data['product'] = invoice
        data['productlineitem'] = productlineitem

        return JsonResponse(data)