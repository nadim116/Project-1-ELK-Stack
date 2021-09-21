#!/bin/bash
#this script will analazyle the file All_roulette_deale_schedule and find what schedule billy worked and add it to a new file called Dealers_working_during_losses


grep 'Billy' All_roulette_dealers_schedule |awk '{print $1,$2,$3,$4}' > Dealers_working_during_losses
