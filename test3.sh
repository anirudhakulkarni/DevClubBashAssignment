#!/bin/bash
#calci using shell

num=$(awk '{print $1}' $1)
operand=$(awk '{print $2}' $1)
len=$(echo $num | wc -w)
ans=0
declare -i ans
for((i=1;i<=$len;i++));
do
    val=$(echo $num | cut -d " " -f $i)
    operator=$(echo "$operand" | sed -n "$i"p)
    declare -i val
    case $operator in
        "+")
            ans=$((ans + val))
        ;;
        "-")
            ans=$((ans - val))
        ;;
        "*")
            ans=$((ans * val))
        ;;
        "/")
            ans=$((ans / val))
        ;;
    esac
    # echo $ans
done

printf $(echo $ans)