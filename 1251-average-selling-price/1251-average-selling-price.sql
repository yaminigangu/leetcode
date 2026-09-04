select p.product_id,round(ifnull(sum(units*price)/sum(units),0),2) as average_price
from prices as p left join unitssold as us 
on p.product_id = us.product_id and purchase_date between start_date and end_date 
group by p.product_id;
