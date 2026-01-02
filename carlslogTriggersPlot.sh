#!/usr/bin/bash
#
#
#

cd /home/seisan/tmp--DONT_USE/carlslogTriggers
for file in `find /mnt/mvofls2/Seismic_Data/monitoring_data/triggers/carlslogTriggers/triggerLists -mtime -1 -name 'carlsubtrigs-*.txt'`
do
    echo $file
    cat "$file" | /home/seisan/bin/diary2doit.pl > doit.sh
    bash doit.sh
done
#rm doit.sh
mv 2026*.png /mnt/mvofls2/Seismic_Data/monitoring_data/triggers/carlslogTriggers/triggerPlots/2026/

