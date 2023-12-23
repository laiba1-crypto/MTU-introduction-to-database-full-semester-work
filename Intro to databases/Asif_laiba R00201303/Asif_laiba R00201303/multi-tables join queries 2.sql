select purchased_order.orderID, product.productName, customer_details.phoneNO, merchants.country from purchased_order join
product on purchased_order.orderID = product.productID join customer_details on purchased_order.orderID = customer_details.customerID join
merchants on purchased_order.orderID = merchants.merchantID;