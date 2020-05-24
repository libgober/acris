mkdir -p docs
mkdir -p data
wget 'https://data.cityofnewyork.us/api/assets/FEBD88D1-42B5-4D38-8753-EE9E73E1C2F9?download=true' -O docs/NYC_OpenData_ACRIS_Datasets.doc
wget 'https://data.cityofnewyork.us/api/views/7isb-wh4c/files/d1825560-807e-43a6-a9a6-4c3139c17fdf?download=true&filename=ACRIS_Public_OpenData_Guide.doc' -O docs/ACRIS_Public_OpenData_Guide.doc
wget 'https://data.cityofnewyork.us/api/views/bnx9-e6tj/rows.csv?accessType=DOWNLOAD' -O data/acris_real_property_master.csv
wget 'https://data.cityofnewyork.us/api/views/8h5j-fqxa/rows.csv?accessType=DOWNLOAD' -O data/acris_real_property_legals.csv
wget 'https://data.cityofnewyork.us/api/views/636b-3b5g/rows.csv?accessType=DOWNLOAD' -O data/acris_real_property_parties.csv
wget 'https://data.cityofnewyork.us/api/views/pwkr-dpni/rows.csv?accessType=DOWNLOAD' -O data/acris_real_property_references.csv
wget 'https://data.cityofnewyork.us/api/views/9p4w-7npp/rows.csv?accessType=DOWNLOAD' -O data/acris_real_property_remarks.csv
wget 'https://data.cityofnewyork.us/api/views/7isb-wh4c/rows.csv?accessType=DOWNLOAD' -O data/acris_document_control_codes.csv
wget 'https://data.cityofnewyork.us/api/views/94g4-w6xz/rows.csv?accessType=DOWNLOAD' -O data/acris_property_type_codes.csv
