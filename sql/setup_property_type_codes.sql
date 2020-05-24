drop table if exists property_type_codes;
create table property_type_codes (
	record_type char(1),
	property_type char(2),
	property_type_desc char(40)
);
\copy property_type_codes from 'data/acris_property_type_codes.csv' with (FORMAT 'csv',HEADER);
