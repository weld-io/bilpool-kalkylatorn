#!/bin/sh

# Run from main (not /batch) folder

WELD_DIST_SCRIPTS_PATH=../../weld-angular-node/dist/public

echo
echo Copying CSS/JavaScript ...

ls $WELD_DIST_SCRIPTS_PATH/scripts/customDomain*
cp $WELD_DIST_SCRIPTS_PATH/scripts/customDomain* www/js/weld.js

ls $WELD_DIST_SCRIPTS_PATH/styles/customdomain*
cp $WELD_DIST_SCRIPTS_PATH/styles/customdomain* www/css/weld.css


echo
echo Downloading images ...

cd www/img

curl -O -J 'https://weld-images.imgix.net/534fd70294b7ec0b00000002/-KQec1Ao-6F627i_s8fX/photo-1446733993804-c62a351c7239_34436.jpg'

cd ../..


echo
echo cordova build ...

cordova build
