


select * from item;
 ino |  iname  | rate  
-----+---------+-------
   2 | cpu     | 30000
   1 | keybord |  3000
(2 rows)


paimode=# create or replace function f5() returns trigger as 'begin if (new.rate-old.rate)<2000 then raise exception ''values should be greter than 2000 %'',new;end if;return new; end' language 'plpgsql'
;
CREATE FUNCTION
paimode=# create trigger t5 before update on item for each row execute procedure f5();
CREATE TRIGGER
paimode=#  update item set rate=32000 where ino=2;
UPDATE 1
paimode=# select * from item; ino |  iname  | rate  
-----+---------+-------
   1 | keybord |  5000
   2 | cpu     | 32000
(2 rows)


