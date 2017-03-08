#!/bin/bash
echo "Check scheduler status for a branch"
echo "============================================"
echo "Branch name :-  "
read branch_name;
cd /dbc/pa-dbc1111/sreedhars/Perforce/build/main/scheduler/cron.d
echo "............File names............."
find .  -type f -name "$branch_name"
echo "..................Result .........."

lines=`find .  -type f -name "$branch_name"`

if [ -z "$lines" ]; 
then
  echo "This branch does not exists"
else
  echo "Current Status :- "
  echo "##################"
  cat `find .  -type f -name "$branch_name"`
fi
