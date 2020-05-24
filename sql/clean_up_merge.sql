create table hias_acris_full_merge as
with A as (select * from hias_matched_acris
where dist is not null)
select 
	A.arrival_date,
	A.case_no,
	A.country as hias_country,
	A.page_idx,
	A.page_no,
	A.surname,
	A.given_name as hias_given,
	A.acris_given,
	A.name as acris_name,
	A.person_or_corporation,
	A.dist as levenshtein_givens,
	parties.doc_id,
	parties.good_through_date,
	case 
	when parties.party_type='1' then party1_type
	when parties.party_type='2' then party2_type
	when parties.party_type='3' then party3_type
	else parties.party_type 
	end as party_type,
	parties.address1 as party_address1,
	parties.address2 as party_address2,
	parties.country as party_address_country,
	city party_city,
	state party_state,
	zip party_zip,
	crfn,
	control_codes.doc_type,
	control_codes.doc_type_desc,
	control_codes.class_code_desc,
	doc_date,
	doc_amount,
	recorded_date,
	modified_date,
	prct_transfer,
	recorded_borough,
	case 
	when borough_code=1 then 'Manhattan'
	when borough_code=2 then 'Bronx'
	when borough_code=3 then 'Brooklyn'
	when borough_code=4 then 'Queens'
	when borough_code=5 then 'Staten Island'
	end as borough,
	block,
	lot,
	easement,
	partial,
	air_rights,
	subterranean_rights,
	property_type_codes.property_type,
	property_type_codes.property_type_desc,
	street_no,
	street_name,
	unit_address
from A
left join parties 
using(name)
left join master
using (doc_id,good_through_date)
left join legals
using (doc_id,good_through_date)
left join control_codes
using (doc_type)
left join property_type_codes
using(property_type);
