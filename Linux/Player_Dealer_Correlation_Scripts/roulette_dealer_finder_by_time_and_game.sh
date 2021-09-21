#!/bin/bash
#this script will tell you who the dealer is based on the game and time. 
#usage: <script name> <time> <AM/PM> <Game name (blackjack, roulette, texasholdem)>

UTIME=$1
UAMPM=$2
UDATE=$3
UGAME=$4

if [[ $UGAME =~ [Bb][Ll][Aa][Cc][Kk][Jj][Aa][Cc][Kk] ]]; then
	echo "Blackjack"
	cat $3_Dealer_schedule | grep $1 | grep $2 | awk '{ print $1 " " $2 " " $3 " " $4}'
elif [[ $UGAME =~ [Rr][Oo][Uu][Ll][Ee][Tt][Tt][Ee] ]]; then
	echo "Roulette"
	cat $3_Dealer_schedule | grep $1 | grep $2 | awk '{ print $1 " " $2 " " $5 " " $6}'
elif [[ $UGAME =~ [Tt][Ee][Xx][Aa][Ss][Hh][Oo][Ll][Dd][Ee][Mm] ]]; then
	echo "Texas hold'em"
	cat $3_Dealer_schedule | grep $1 | grep $2 | awk '{ print $1 " " $2 " " $7 " " $8}'
else
    echo "No game found"
fi

