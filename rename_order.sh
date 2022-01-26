#!/bin/sh
#lol

#Error or Help
if [ $# -ne 2 ] && [ $# -ne 1 ] 
then
    echo "Usage: rename.sh [PATH] [first_number] "
    exit 1 
#default begin number
elif[ $# -e 1 ]

    begin_number=0
    path="$1"

#2 args
else
    path="$1"
    begin_number=$2
fi

main(){
    #initilizing counter for use in name
    counter=$begin_number
    
    for file in $path/*;do
            
        file_extension=${file##*.}
        #format string of filename
        new_name=$path/$(printf "%03i.%s" $counter $file_extension )

        mv $file $new_name
        #add 1 for counter    
        let counter=$counter+1

    done
}

main
