select po.orderID, c.lname, m.merchantID 
from customer_details AS c inner join purchased_order AS po
on c.city = po.to_city
inner join product as p
using(productID)
inner join merchants AS m
using (merchantID)
Where c.lname = 'Fitzgerald' AND po.to_city = 'Glasgow';