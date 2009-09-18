
ccfc.sh | while read -r file 
do
  echo "==========================================="
  echo "Currently diffing $(basename $file)"
  echo "==========================================="
  file=$(echo $file | sed -e's/\\/\//g')
  cleartool diff -predecessor "$file"
  echo ""
done
