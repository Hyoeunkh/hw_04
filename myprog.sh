#!/bin/bash

echo "...create temp directory..."
echo "...copy files to temp directory..."

mkdir temp

cp -a num1.txt temp
cp -a num2.txt temp
cp -a cal.sh temp
 
echo "1)add"
echo "2)sub"
echo "3)div"
echo "4)mul"
read -p "select menu:" menu
 
set 1 2 3 4
 
echo "...add selected..."
echo "...run calculater..."
 
./cal.sh $menu

