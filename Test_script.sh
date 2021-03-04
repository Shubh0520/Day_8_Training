#!/bin/bash
echo "This is a script for the assigned task to be completed"
echo "----STEP-1.CREATING DIRECTORIES----"
echo "The home directory of this system is:-"
pwd
# rm -r /c/Users/shubham.bhatnagar/apps
if [ -d apps/c/Users/shubham.bhatnagar ] ; then
  echo "Directory already mentioned" 
else #if needed #also: elif [new condition]
   mkdir -p /c/Users/shubham.bhatnagar/apps/data/
fi
# mkdir -p /c/Users/shubham.bhatnagar/apps/data/
#echo "Listing the created Directories"
# ls -a /c/Users/shubham.bhatnagar/
echo "----STEP-2 CREATING Process.dat----" 
cd /c/Users/shubham.bhatnagar/apps/data/ 
touch process
file_name=process
current_time=$(date "+%Y.%m.%d-%H.%M.%S")
echo "Current Time : $current_time"
new_fileName=$file_name.$current_time
echo "New FileName: " "$new_fileName"
cp $file_name $new_fileName
echo "You should see new file generated with timestamp on it.."
echo "----STEP-3 CREATING Pid file with random number----"
touch pid
echo "Writing random number to the pid file"
echo "$RANDOM" >> pid
echo "Random number is:"
cat pid
echo "----STEP-4 Appending timestamp to the file----"
cd /c/Users/shubham.bhatnagar/apps/data/
touch file.log
date >> file.log
echo "Time Stamp Added"
