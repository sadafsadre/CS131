#!/bin/bash

#Date/time info
timestamp=$(date "+%F-%T")

#Vendor IDs
vendorid=("1.0" "2.0" "4.0")

#Taxi dataset filename
file="2019-01-h1.csv"

#Making sure .gitignore exists
touch .gitignore

#Looping through each vendor ID
for vendor in "${vendorid[@]}"; do
    output="${timestamp}-${vendor}.csv"

    #Extracting rows for given vendor ID
    grep "^$vendor," "$file" > "$output"
    
    #Adding new file to .gitignore
    grep -qxF "$output" .gitignore || echo "$output" >> .gitignore
done

#Creating ws4.txt with wc results
wc -l -w -c "${timestamp}-1.0.csv" "${timestamp}-2.0.csv" "${timestamp}-4.0.csv" > ws4.txt

#Appending .gitignore contents to ws4.txt
echo -e "\nContents of .gitignore:" >> ws4.txt
cat .gitignore >> ws4.txt

echo "Processing complete. Results are saved in ws4.txt"
