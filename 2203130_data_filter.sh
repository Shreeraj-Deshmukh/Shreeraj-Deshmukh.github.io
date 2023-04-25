#!/bin/bash

echo "Created ca_city_montreal.csv"

# giving variables 

filename=$1
field_value=$3
field_name=$2


# The first line

#filename2=$(filename:0:2)
filename_output=$filename"_"$fieldname"_"$fieldvalue".csv"

# creating the output file

touch $filename_output


# 

lines=( grep -iw "$field_value" $filename | wc -l )

# adding the data to the output file

echo $filename, $field_name, $field_value, $lines >> $filename_output


# second line from column headers to output

cat $filename | head -n 1 >> $filename_output

# Storing rows wherein field name is same as field value

grep -iw "$field_value" $file_name >> $filename_output


################################end################
