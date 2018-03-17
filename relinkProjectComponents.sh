#!/bin/bash

# linken der Projektkomponenten in bower_components

cd project_components

for i in * ; do
  if [ -d "$i" ]; then
    echo "relink $i"

    # installation löschen, wir wollen nur dass es im bower eingetragen wird
    rm -rf ../bower_components/$i
    # in bower_components linken
    cd ../bower_components
    ln -s ../project_components/$i ./$i
    # wieder in diesen ordner kommen
    cd ../project_components
    # bower linken
    cd $i
    rm bower_components
    ln -s ../../bower_components ./bower_components
    cd ..
  fi
done
