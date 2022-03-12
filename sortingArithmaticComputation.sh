#! /bin/bash -x

read -p "Enter First Number" a
read -p "Enter Second Number" b
read -p "Enter Third Number" c

comp1=$(($a + $b * $c))

comp2=$(($a * $b + $c))

comp3=$(($c + $a / $b))

comp4=$(($a % $b + $c))

declare -A computationDict

computationDict[a+b*c]=$comp1
computationDict[a*b+c]=$comp2
computationDict[c+a/b]=$comp3
computationDict[a%b+c]=$comp4
echo "${computationDict[@]}"

declare -a computationArr

computationArr=( ${computationDict[a+b*c]} ${computationDict[a*b+c]} ${computationDict[c+a/b]} ${computationDict[a%b+c]} )
echo "${computationArr[@]}"
