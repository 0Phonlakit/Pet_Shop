from django.db import models

# Create your models here.

class Customer (models.Model) :
    user_id = models.CharField(max_length=10, primary_key=True)
    fname = models.CharField(max_length=100, null=True, blank=True)
    lname = models.CharField(max_length=100, null=True, blank=True)
    password = models.CharField(max_length=100, null=True, blank=True)
    email = models.CharField(max_length=100, null=True, blank=True)
    tel = models.CharField(max_length=15, null=True, blank=True)
    address = models.CharField(max_length=100, null=True, blank=True)
    class Meta:
        db_table = "customer"
        managed = False
    def __str__(self):
        return self.user_id
    
class Payment (models.Model) :
    payment_method = models.CharField(max_length=10, primary_key=True)
    payment_description = models.CharField(max_length=100, null=True, blank=True)
    class Meta:
        db_table = "payment"
        managed = False
    def __str__(self):
        return self.payment_method
    
class ProductType (models.Model) :
    product_type = models.CharField(max_length=10,primary_key=True)
    product_description = models.CharField(max_length=100, null=True, blank=True)
    class Meta:
        db_table = "product_type"
        managed = False
    def __str__(self):
        return self.product_type
    
class Product (models.Model) :
    product_code = models.CharField(max_length=10, primary_key=True)
    product_name = models.CharField(max_length=100, null=True, blank=True)
    animal_type = models.CharField(max_length=100, null=True, blank=True)
    product_price = models.FloatField(null=True, blank=True)
    product_type = models.ForeignKey(ProductType, on_delete=models.CASCADE, db_column='product_type')
    class Meta:
        db_table = "product"
        managed = False
    def __str__(self):
        return self.product_code
    
class Order (models.Model) :
    order_no = models.CharField(max_length=10, primary_key=True)
    order_date = models.DateField(null=True)
    user_id = models.ForeignKey(Customer, on_delete=models.CASCADE, db_column='customer')
    total = models.FloatField(null=True, blank=True)
    class Meta:
        db_table = "order"
        managed = False
    def __str__(self):
        return self.order_no
    
class OrderLineItem (models.Model) :
    order_no = models.ForeignKey(Order, on_delete=models.CASCADE, db_column='order')
    item_no = models.IntegerField()
    product_code = models.ForeignKey(Product, on_delete=models.CASCADE, db_column='product')
    quantity = models.IntegerField()
    unit_price = models.FloatField(null=True, blank=True)
    product_total = models.FloatField(null=True, blank=True)
    class Meta:
        db_table = "order_line_item"
        unique_together = (("order_no", "item_no"),)
        managed = False
    def __str__(self):
        return '{"order_no":"%s","item_no":"%s"}' % (self.order_no, self.item_no)