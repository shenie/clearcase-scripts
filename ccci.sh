
if [ $# -ne 1 ] ; then
  echo "Usage: $0 file"
  exit 1
fi

cleartool checkin -nc $1
