select po.orderID ,po.customerID,po.orderDate,po.to_ddress,po.to_city,po.to_zipcode,po.total_cost€,po.productID
from purchased_order as po 
inner join customer_details AS c
on po.orderID = c.customerID
right join product as p
on po.orderID = p.productID
right join merchants as m
on po.orderID = m.merchantID 
 order by po.orderID;
