#!/bin/bash

# Set the directory to search in (optional, use if you want to limit the search)
# search_dir="lib/smartpay_web/controllers"

# Find all files ending with .html.heex
# find . -name "*.html.heex" | while read file; do
#   # Use sed to perform the replacements
#   sed -iE '
#     s/"<%= ([a-zA-Z0-9._]+) %>"/{ \1 }/g
#   ' "$file"
# done

# echo "Replacements completed."

# Find all files with the 'html.heex' extension
find . -type f -name "*.html.heex" | while read file; do
  # Use sed to replace the desired pattern
  # sed -i -E 's/"<%= *(@?[a-zA-Z0-9_.]+) *%>"/\{\1\}/g' "$file"
  # sed -i -E 's/"<%= ([^%]+) %>"/{\1}/g' "$file"
  sed -i -E 's/<%= *([^%]+) *%>/{\1}/g' "$file"
done
echo "Replacements completed."