#!/bin/bash

menu=$1 
txt1=`cat num1.txt`
txt2=`cat num2.txt`
if [ -z $menu ]
then
    echo "...none operator parameter...."
    echo "1)add"
    echo "2)sub"
    echo "3)div"
    echo "4)mul"
    read -p "select menu:" reply
    menu="$reply"  
fi  
 
case $menu in 
  1) op="add"
     result=`expr $txt1 + $txt2` ;; 
  2) op="sub"
     result=`expr $txt1 - $txt2` ;; 
  3) op="div"
     result=`expr $txt1 / $txt2` ;;
  4) op="mul"
     result=`expr $txt1 \* $txt2` ;;
esac

echo "num1:$txt1"
echo "num2:$txt2"
echo "op:$op"
echo "result:$result"
