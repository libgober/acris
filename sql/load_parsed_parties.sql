drop type pc cascade;
create type pc as ENUM ('Person','Corporation','Household');
drop table parsed_names;
create table parsed_names (
        name varchar PRIMARY KEY,
        person_or_corporation pc,
        given varchar,
        surname varchar
) ;
\copy parsed_names from 'data/corrected_parsed_names2.csv' CSV DELIMITER ',';
