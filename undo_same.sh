
# Undo checkout for checked out files that has same content

ccfc.sh | while read -r file 
do
  file=$(echo $file | sed -e's/\\/\//g')
  output=`cleartool diff -predecessor "$file" | tee -a | grep -c "Files are identical"`
  if [ ${output} -eq 1 ] ; then
    echo "Undo checkout for '$(basename $file)' as it is the same"
    cleartool unco -rm "$file"
  fi
done
