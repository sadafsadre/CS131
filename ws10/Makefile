.PHONY: clean

all: clean.csv

trimmed.csv: raw.csv
	cut -d, -f1,3,5 raw.csv > trimmed.csv

clean.csv: trimmed.csv
	awk 'BEGIN{FS=","} NR==1{print; next} {empty=0; for(i=1;i<=NF;i++) if($$i=="") empty=1; if(!empty) print}' trimmed.csv > clean.csv

clean:
	rm -f trimmed.csv clean.csv
