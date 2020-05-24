drop table if exists control_codes;
create table control_codes (
	record_type char(1),
	doc_type char(8) PRIMARY KEY,
	doc_type_desc char(30),
	class_code_desc char(30),
	party1_type char(20),
	party2_type char(20),
	party3_type char(20)
);
\copy control_codes from 'data/acris_document_control_codes.csv' with (FORMAT 'csv',HEADER);
