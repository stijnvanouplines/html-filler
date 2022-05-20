#!/bin/bash

while IFS=',' read -r NAME FUNCTION PHONE EMAIL
do
    FILENAME="${NAME// /-}.html"

    mkdir -p export && cp -v template.html export/$FILENAME &> /dev/null

    sed -i "" "s/{NAME}/$NAME/" export/$FILENAME
    sed -i "" "s/{FUNCTION}/$FUNCTION/" export/$FILENAME
    sed -i "" "s/{PHONE}/$PHONE/" export/$FILENAME
    sed -i "" "s/{EMAIL}/$EMAIL/" export/$FILENAME
done < data.csv
