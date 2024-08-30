#!/bin/bash
#define a variable with cutoff value

cutoff_timestamp="2022-04-12 13:00:00"

#store the output in the file 

output_file="instance_ids.txt"


# Define the URL of the CSV file
CSV_URL="https://raw.githubusercontent.com/BGLCorp/devops-interview-tests/main/ec2-instances.csv"

# Fetch and process the CSV file
#awk used to read the columns with comman separataion -F,  and a variable is passed using -v
curl -s $CSV_URL | awk -F, -v cutoff="$cutoff_timestamp" '
{
    # Remove quotes from the timestamp field
    gsub(/"/, "", $2)

    # Combine time and date properly from the CSV fields
    # The timestamp field should be in the format HH:MM:SS YYYY-MM-DD
    time_date = $2
    
    # Rearrange time_date to YYYY-MM-DD HH:MM:SS for comparison
    split(time_date, arr, " ")
    formatted_timestamp = arr[2] " " arr[1]

    # Compare the formatted timestamp with the cutoff timestamp
    if (formatted_timestamp < cutoff) {
        gsub(/"/, "", $1)  # Removes quotes from the first column
        print $1           # Print the InstanceId (first field)
        #print formatted_timestamp  # Print the timestamp (second field)
    }
}'> "$output_file"

cat $output_file


