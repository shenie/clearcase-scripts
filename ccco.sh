
if [ $# -ne 2 ] ; then
  echo "Usage: $0 comments file"
  exit 1
fi

cleartool co -unreserved -c "$1" $2
