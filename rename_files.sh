#!/bin/bash

for file in *_view.ex; do
  new_file=${file/_view/_html}
  mv "$file" "$new_file"
done