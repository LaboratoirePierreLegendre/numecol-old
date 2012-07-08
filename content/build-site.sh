#!/bin/sh

/usr/bin/git clone https://github.com/LaboratoirePierreLegendre/numecol /tmp/numecol
cd /tmp/numecol
nanoc compile
if [ $? -eq 0 ];
then
  rsync -avz output/ /Users/numericalecology/Sites/
fi
rm -rf /tmp/numecol
