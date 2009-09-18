
cleartool ls -view_only -r -s $1 | sed -e '/classes/d; /\.class/d; /@@/d; /\\output\\/d; /output$/d; /\\agitar\\/d; /\\work\\/d; /work$/d'
