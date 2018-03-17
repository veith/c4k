#!/bin/bash


rmdir bower_components/app-doc
echo "erzeuge documentation aus installierten components, bitte um etwas geduld"
for i in bower_components/* ; do
  if [ -d "$i" ]; then
    echo $i

    cd $i
    polymer analyze ./*.html > analysis.json
    cd ..
    cd ..

  fi
done

echo "erzeuge app-doc"
mkdir bower_components/app-doc
cp ./.docshell bower_components/app-doc/index.html
polymer analyze ./src/**.html > bower_components/app-doc/analysis.json


echo "App documentation: http://127.0.0.1:8000/components/app-doc/"
echo "Installed component documentation: http://127.0.0.1:8000/components/component-name/"

