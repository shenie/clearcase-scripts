
if [ $# -ne 1 ] ; then
  echo "Usage: $0 file"
  exit 1
fi

parent_dir=`dirname "$1"`
file_name=`basename "$1"`

echo "checking out directory: ${parent_dir}..."
ccco.sh "adding ${basename}" "$parent_dir"

echo "adding ${file_name} to clearcase"
cleartool mkelem -c "adding ${file_name}" -ci "$1"

#ccci.sh "$1"
ccci.sh "$parent_dir"
