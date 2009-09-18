
# http://www.ss64.com/bash/read.html
ccfc.sh $1 | while read -r file
do
  cleartool unco -rm "$file"
done
