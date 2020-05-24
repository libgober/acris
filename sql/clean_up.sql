-- clean up uninterpretable garbage
create type borough as ENUM ('Manhattan','Bronx','Brooklyn','Queens');
alter table master rename recorded_borough to tmp;
alter table master add column recorded_borough borough;
update master set 
	recorded_borough = case
        	when tmp=1 then 'Manhattan'::borough
        	when tmp=2 then 'Bronx'::borough
        	when tmp=3 then 'Brooklyn'::borough
        	when tmp=4 then 'Queens'::borough
        	else null
		end;
alter table master drop column tmp;
create index pty_docid on parties(doc_id);


create or replace function which_python()
returns text 
AS $$
import sys
return sys.executable
$$ language plpython3u;

