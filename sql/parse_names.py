from sqlalchemy import create_engine
import csv
import probablepeople as pp
conn = create_engine("postgres://brian@localhost:5432/acris")
c=conn.raw_connection().cursor()
c.execute("select distinct name from parties")
#setup output
csvfile = open("out.csv","w+",newline='')
csvwriter = csv.writer(csvfile)
keys_of_interest = ['GivenName','Surname']
all_keys = set()
for one in c:
    name, = one
    out = [name]
    try:
        parsed,t = pp.tag(name)
        out.append(t)
        for key in keys_of_interest:
            if key in parsed:
                out.append(parsed[key])
            else:
                out.append('')
        for key in parsed:
            all_keys.add(key)
       #now write
    except:
        pass
    csvwriter.writerow(out)
        #now let's track what we might get out
print("Done! Here's what else we could have extracted")
print(all_keys)
