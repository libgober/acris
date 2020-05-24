drop table if exists legals;
create table legals (
	doc_id char(16), --cccnnnnnnnnnnnnn
	record_type char(1), --l for lot record
	borough_code integer,
	block integer,
	lot integer,
	easement char(1), --really is a bool
	partial char(1), --partial,entire,or not applicable
	air_rights char(1), --bool
	subterranean_rights char(1),
	property_type char(2), --code defined in property codes
	street_no char(12),
	street_name char(32),
	unit_address char(8),
	good_through_date char(10)
);
\copy legals from 'data/acris_real_property_legals.csv' WITH (FORMAT 'csv', HEADER);
create index lgl_docid_idx on legals (doc_id);
