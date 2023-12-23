select purchased_order.productID, QTY
from customer_details, product, purchased_order
where customer_details.customerID = purchased_order.orderID
and product.productID = purchased_order.customerID;
