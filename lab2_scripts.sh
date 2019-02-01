#!/bin/bash
# Authors : Yinnan Chen
# Date: 1/31/2019
echo "enter the file you want to read."
read FileName
echo "Enter regex"
read reg
grep -E $reg $FileName

phone=[0-9]{3}-[0-9]{3}-[0-9]{4}
result=$(grep -E -c $phone $FileName)
#grep -E -c $phone $FileName 
echo "the count phone number is $result"

email=[@]
countemail=$(grep -E -c $email $FileName)
#grep -E -c $email $FileName
echo " the count email is $countemail"

Rephone=303-
grep -E $Rephone $FileName > phone_result.txt

ReEmail=geocities.com
grep -E $ReEmail $FileName > email_result.txt

echo "enter the regex that you want to list"
read Rereg
grep -E $Rereg $FileName > command_result.txt
