#!/bin/bash
#
# add your solution after each of the 10 comments below
#

# count the number of unique stations
tail -n +2 201402-citibike-tripdata.csv | cut -d, -f4,8 | tr , "\n" | sort | uniq | wc -l

# count the number of unique bikes

tail -n +2 201402-citibike-tripdata.csv  | cut -d, -f12 | sort | uniq | wc -l

# count the number of trips per day

cut -d, -f2 201402-citibike-tripdata.csv | cut -d" " -f1 | sort | uniq -c

# find the day with the most rides

cut -d, -f2 201402-citibike-tripdata.csv | cut -d" " -f1 | sort | uniq -c | sort -r | head -n1 | cut -d\" -f2

# find the day with the fewest rides

tail -n +2 201402-citibike-tripdata.csv |cut -d, -f2 | cut -d" " -f1 | sort | uniq -c | sort | head -n1 | cut -d\" -f2

# find the id of the bike with the most rides

tail -n +2 201402-citibike-tripdata.csv |cut -d, -f12 | sort | uniq -c | sort -r | head -n1 | cut -d\" -f2

# count the number of rides by gender and birth year

tail -n +2 201402-citibike-tripdata.csv | cut -d, -f15,14 | sort | uniq -c | sort

# count the number of trips that start on cross streets that both contain numbers (e.g., "1 Ave & E 15 St", "E 39 St & 2 Ave", ...)

cut -d, -f5 201402-citibike-tripdata.csv | grep '.*[0-9].* & .*[0-9].*' | wc -l

# compute the average trip duration

tail -n +2 201402-citibike-tripdata.csv | cut -d, -f1 | tr -d \" | awk '{count+=$1} END {print count/NR}'