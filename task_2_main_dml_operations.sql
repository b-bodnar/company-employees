-- INSERT
insert into company(name, address, city, region_id, is_active, business_area)
values ('Smart Solution', 'вул.Степана Бандери, 16', 'Львів', 1, true, 'Розробка програмного забезпечення');

insert into company(name, address, city, region_id, is_active, business_area)
values ('Рукавичка', 'вул.Маршала Рибалко, 15', 'Київ', 1, true, 'Роздрібна торгівля');

-- UPDATE
update company
set country='Україна'
where id = 2;

update company
set country='Україна'
where id = 3;

-- SELECT
select c.*, r.name
from company c
         left join region r on r.id = c.region_id;

-- DELETE
delete
from company
where id = 3;
