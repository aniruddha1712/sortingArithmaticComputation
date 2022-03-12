#! /bin/bash -x

read -p "Enter First Number" a
read -p "Enter Second Number" b
read -p "Enter Third Number" c

comp1=$(($a + $b * $c))

comp2=$(($a * $b + $c))
