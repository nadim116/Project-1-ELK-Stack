#!/bin/bash
# this script will analyze the employee's schedule to easily find the roulette dealer at a specific time.

 

grep "$1 $2" $3_Dealer_schedule |awk '{print $1,$2,$5,$6}'



