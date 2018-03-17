#!/bin/bash


echo "Aktualisiere app-doc"
cp ./.docshell bower_components/app-doc/index.html
polymer analyze ./src/**.html > bower_components/app-doc/analysis.json

echo "App documentation: http://127.0.0.1:8000/components/app-doc/"

