cd $1
ls *.data* | sed s/.data.*//g | sort --version-sort

