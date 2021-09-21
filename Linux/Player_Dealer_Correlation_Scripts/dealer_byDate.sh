#!/bin/bash
# Script that shows who the dealer was by date and adds it to a file called All_roulette_dealers_schedule

grep -i ':00:00'  0310_Dealer_schedule |awk '{print $1,$2,$5,$6}' >> All_roulette_dealers_schedule
grep -i ':00:00'  0312_Dealer_schedule |awk '{print $1,$2,$5,$6}' >> All_roulette_dealers_schedule
grep -i ':00:00'  0315_Dealer_schedule |awk '{print $1,$2,$5,$6}' >> All_roulette_dealers_schedule

