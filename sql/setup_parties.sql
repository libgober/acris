drop table if exists parties; 
create table parties (
	doc_id char(16), --cccnnnnnnnnnnnnn
	record_type char(1), --P for party
	party_type char(1),
	name varchar,
	address1 varchar,--name/attn
	address2 varchar,--street address
	country char(2),
	city varchar,
	state char(2),
	zip char(9),
	good_through_date varchar
);
\copy parties from 'data/acris_real_property_parties.csv' WITH (FORMAT 'csv', HEADER);
alter table parties rename column good_through_date to tmp;
alter table parties add column good_through_date char(10);
update parties set good_through_date = substring(tmp,1,10);
alter table parties drop column tmp;
create index pty_name_idx on parties(name);
