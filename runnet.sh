#!/bin/bash

max=10
port=5001
in=5001
for i in `seq 2 $max`
do
    echo "$i"
    echo "https://localhost:${in}"
    
    lvar="https://localhost:${in}"

# random port ./webclients -urls --urls "http://[::1]:0;https://[::1]:0" 

    echo $lvar
    #dotnet run --urls=$lvar &
    nohup dotnet run  --urls=$lvar  &>/dev/null &
    in=$((in+1))
    
    sleep 5
    
    
done

