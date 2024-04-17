#!/bin/bash
declare -A arr
array_()
{
	rows=100
	a=1
	for((i=1;i<=$rows;i++))do
		arr[$i]=$a
	((a++))
done

}
print(){
a=1
rows=100
for((i=1;i<=$rows;i++))
do
	if [ $a -eq 11 ]
	then
	echo
	a=1
	fi
	if [ $i -le 10 ]
	then
		printf ' '
	fi
		printf "  | "
		printf  $((arr[$i]))

	((a++))
done
}

dice_roll()
{
read -p "enter the name of the player1 = " name1
read -p "enter the name of the player2 = " name2
	player1='p'
	player2='p'
printf "|-------------------------------------------------------|\n"
printf "| Snake at position \t|\t  laddar at Position\n"
printf "|-------------------------------------------------------|\n"
printf "|from 98 to 28\t\t|\t\t from 8  to 26 \t|\n"
printf "|from 92 to 51\t\t|\t\t from 21 to 82 \t|\n"
printf "|from 83 to 19\t\t|\t\t from 43 to 77 \t|\n"
printf "|from 69 to 33\t\t|\t\t from 50 to 81 \t|\n"
printf "|from 59 to 17\t\t|\t\t from 62 to 96 \t|\n"
printf "|from 48 to 9 \t\t|\t\t from 66 to 97 \t|\n"
printf "|from 46 to 5 \t\t|\t\t from 89 to 100\t|\n"
printf "|-------------------------------------------------------|\n"
echo
	echo "by default player1= $name1  and player2= $name2 is at first position"
position=1
position2=1
	arr[$position]=$player1
	arr[$position2]=$player2
	print
echo
echo "press enter [2 times] to start the game....."
	read ch
while [ $position -le 100 ]
do
printf "\n press enter for each turn \n"
read ch
	clear
	dice=$(($RANDOM % 6+1))
	dice2=$(($RANDOM % 6+1))
	arr[$position]=$position
	arr[$position2]=$position2
	position=$(($dice+$position))
	position2=$(($dice2+$position2))
	if [ $position -gt 100 ]
then
	position=$(($position-$dice))
	echo "since the $name1 dice is greater to get to the 100 turn skipp"
fi
	if [ $position2 -gt 100 ]
then
position2=$(($position2-$dice2))
	  echo "since the $name2 dice is greater to get to the 100 turn skip"

fi
echo "player:1"
	echo "the dice roll is $dice"
	echo "$name1 position $position"
	echo
echo "player:2"
	echo "the dice roll is $dice2"
	echo  "position of $name2 is $position2"
	arr[$position]=0
	 if [ $position -eq  98 ]
        then
        	newposition=28
	        arr[$position]=$position
		position=$newposition
		arr[$newposition]=$player
	fi
	if [ $position -eq  92 ]
        then
                newposition=51
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  83 ]
        then
                newposition=19
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  69 ]
        then
                newposition=33
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  59 ]
        then
                newposition=17
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  48 ]
        then
                newposition=9
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  46 ]
        then
                newposition=5
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  8 ]
        then
                newposition=26
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  21 ]
        then
                newposition=82
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  43 ]
        then
                newposition=77
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  50 ]
        then
                newposition=81
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  62 ]
        then
                newposition=96
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  66 ]
        then
                newposition=97
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq  80 ]
        then
                newposition=100
                arr[$position]=$position
                position=$newposition
                arr[$newposition]=$player

        fi
if [ $position -eq 100 ]
then
clear
echo "the position of $name1 is =$position"
echo "the $name1 is the winner"
print
break
fi

##palyer 2
arr[$position2]=0
 if [ $position2 -eq  98 ]
        then
                newposition=28
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2
        fi
        if [ $position2 -eq  92 ]
        then
                newposition=51
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  83 ]
        then
                newposition=19
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  69 ]
        then
                newposition=33
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  59 ]
        then
                newposition=17
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  48 ]
        then
                newposition=9
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  46 ]
        then
                newposition=5
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  8 ]
        then
                newposition=26
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  21 ]
        then
                newposition=82
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  43 ]
        then
                newposition=77
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  50 ]
        then
                newposition=81
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  62 ]
        then
                newposition=96
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  66 ]
        then
                newposition=97
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

        fi
if [ $position2 -eq  80 ]
        then
                newposition=100
                arr[$position2]=$position2
                position=$newposition
                arr[$newposition]=$player2

		fi
if [ $position2 -eq 100 ]
	then
clear
echo "the $name2 position is $position2"
echo "the $name2 is the winner "
	print
	break
	fi
print
done
echo
}
array_
dice_roll
