create server l2
foreign data wrapper postgres_fdw
options (host 'localhost',dbname 'l2')
;
create foreign table cases (
	arrival_date text,
	case_no text,
	country text,
	given_name text,
	page_idx bigint,
	page_no bigint,
	surname text
)
SERVER l2;
