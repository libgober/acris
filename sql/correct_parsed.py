import csv
infile = open("data/parsed_names.csv","r",newline='')
csvreader = csv.reader(infile)
outfile = open("data/corrected_parsed_names.csv","w+",newline='')
csvwriter=csv.writer(outfile)
infile
for row in csvreader:
    if len(row)==4:
        csvwriter.writerow(row)
infile.close()
outfile.close()
