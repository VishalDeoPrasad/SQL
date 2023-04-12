-- Question: Assume today’s date is May 31, 2019, and the marketing director of the
-- farmer’s market wants to give infrequent customers(visited only less than 2 days) in
-- the past 30 days an incentive to return to the market in June.

select cp.customer_id, count(distinct cp.market_date) as visit_count, c.*
from customer_purchases as cp left join customer as c on cp.customer_id=c.customer_id
where month(cp.market_date) = 5
group by cp.customer_id
having count(distinct cp.market_date) <= 4;

