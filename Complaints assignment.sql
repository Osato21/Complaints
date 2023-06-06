USE comp_db;

select count(*) as TotalComplaints
from consumer_complaints
where date_received=date_sent_to_company;


select product_name, count(*) as complaints
from consumer_complaints
where date_received=date_sent_to_company
group by product_name
order by complaints desc
limit 3;

select issue, count(*) as issue
from consumer_complaints
where date_received=date_sent_to_company
group by issue
order by issue desc
limit 5;

select company, count(*) as Highest5Companies
from consumer_complaints
where date_received=date_sent_to_company
group by company
order by highest5Companies desc
limit 5;

select  company, count(*) as Least3Companies
from consumer_complaints
group by company 
order by least3Companies asc
limit 3;

select date_received, count(*) as HighestIssuesReceived
from consumer_complaints
group by date_received
order by HighestIssuesReceived desc
limit 2;

select date_received, count(*) as LowestIssuesReceived
from consumer_complaints
group by date_received
order by LowestIssuesReceived asc
limit 2;


select submitted_via, count(*) as ModeOfCommunication
from consumer_complaints
group by submitted_via
order by ModeOfCommunication desc
limit 1;

select Statename, count(*) as MostComplaintsreceived
from consumer_complaints
group by statename
order by MostComplaintsreceived desc
limit 2;


select Statename, product_name, count(*) as MostComplaintsreceived
from consumer_complaints
where product_name='student loan'
group by statename
order by MostComplaintsreceived desc
limit 1;

select company, consumer_disputed, count(*) as MostConsumerDsipute
from consumer_complaints
where consumer_disputed='Yes'
group by company
order by MostConsumerDsipute desc
limit 2;




