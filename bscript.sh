#!/bin/bash

path="$HOME/bin/custom/"

echo "zsh script name:"
read name
echo "path: (default: $path)"
read custompath

if [[ -n "$custompath" ]];  then
	path="$custompath"
fi

cd $path

file="${name}.sh"
touch $file
echo '#!/bin/bash' > $file
chmod u+x $file
echo "$(pwd)/$file"
exit 0

