#!/bin/bash
# Name: bscript.sh
# Author: ben
# Date: 2024-05-24
# Description: Generate an executable bash script with path

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
cat << EOF > $file
#!/bin/bash
#
# Name: $file
# Author: $USER
# Date: $(date '+%Y-%m-%d')
# Description: 
EOF

chmod u+x $file
echo "$(pwd)/$file"
exit 0

