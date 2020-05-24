create table hias_matched_acris as 
with A as (select * from cases)
select 
	A.*,
	B.given as acris_given,
	B.name,
	B.person_or_corporation,
	levenshtein(A.given_name,B.given) as dist from A
left join parsed_names B
on levenshtein(A.given_name,B.given)<=1 and 
A.surname=B.surname;
