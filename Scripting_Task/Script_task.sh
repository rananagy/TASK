#!/bin/bash

cat Sourcefile.txt | while read line;

do

ID=$(echo $line | awk '{print $3}')
EMAIL=$(echo $line | awk '{print $2}')
 

 if [[ "$((ID%2))" -eq 0 && "$ID" != "" && "$EMAIL" == *".com" ]]
  then
    echo "the $ID of $EMAIL is EVEN number"

  elif [[ "$((ID%2))" -ne 0 && "$ID" != "" && "$EMAIL" == *".com" ]]
  then
   echo "the $ID of $EMAIL is ODD number"
  
  else 
    
     if [[ "$ID" == "" || "$EMAIL" != *".com" ]]
     
      then  
        
        continue
     fi
  fi
done
