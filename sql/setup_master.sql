drop table if exists master;
-- reference acris_public_opendata_guide.doc
create table master (
	doc_id char(16), --cccnnnnnnnnnnnnn
	record_type char(1), -- A for master record
	crfn char(13), --YYYYNNNNNNNNNNNNN 
	recorded_borough integer, --borough where doc recorded
	doc_type char(8), -- type of instrument
	doc_date char(10), --MM/DD/YYYY
	doc_amount numeric(16,2), -- total consideration for xfers and obligation/principal debt for motrgages
	recorded_date char(10), -- MM/DD/YYYY
	modified_date char(10), --MM/DD/YYYY
	reel_year integer, --pre-acris real year
	reel_nbr  integer, --pre-across reel number
	reel_page integer, --preacris real page
	prct_transfer numeric(9,6), --reported percentage of interest xfer
	good_through_date char(10),
       PRIMARY KEY (doc_id,good_through_date) -- following discussion online	
);
\copy master from 'data/acris_real_property_master.csv' WITH (FORMAT 'csv', HEADER);
