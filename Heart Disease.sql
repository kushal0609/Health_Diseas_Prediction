use b88;

select * from heart;

alter table heart rename column ï»¿age to age;

select * from heart;

create view heart_disease as
(select *, case when age<=30 then 'Below 30'
when age>30 and age<=35 then '31-35'
when age>35 and age<=40 then '36-40'
when age>40 and age<=45 then '41-45'
when age>45 and age<=50 then '46-50'
when age>50 and age<=55 then '51-55'
when age>55 and age<=60 then '56-60'
when age>50 and age<=65 then '61-65'
when age>65 then 'above 65' end as age_group
from heart);

select * from heart_disease;