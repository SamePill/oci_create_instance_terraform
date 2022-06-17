# repeat max 1000 times
for var in {1..1000}
do 
    echo $var
    res=$(./run.exp)
    if [[ "$res" == *Error:* ]]; then
        # when result has error, retry to create instance.
        #echo "$res"  
        ER="${res#*Error}"
        echo "ERROR "  "${ER}"
        sleep 1
        continue
    else
        echo "${res}"
        break
    fi
done


