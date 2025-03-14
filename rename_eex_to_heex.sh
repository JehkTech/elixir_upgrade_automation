#!/bin/bash

# for file in *.eex; do
#   new_file=${file%.eex}.heex
#   mv "$file" "$new_file"
# done

#!/bin/bash

find controllers -type f -name "*.eex" -exec bash -c 'mv "$0" "${0%.eex}.heex"' {} \;
