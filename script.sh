#!/bin/bash

cd "$(dirname "$0")"

while IFS=',' read -r NAME FUNCTION PHONE EMAIL
do
    FILENAME="${NAME// /-}.html"

    mkdir -p export && cp -v template.html export/$FILENAME &> /dev/null

    sed -i "" "s/%NAME%/${NAME//&/\\&}/g" export/$FILENAME
    sed -i "" "s/%FUNCTION%/${FUNCTION//&/\\&}/g" export/$FILENAME
    sed -i "" "s/%PHONE%/${PHONE//&/\\&}/g" export/$FILENAME
    sed -i "" "s/%EMAIL%/${EMAIL//&/\\&}/g" export/$FILENAME
done < data.csv
