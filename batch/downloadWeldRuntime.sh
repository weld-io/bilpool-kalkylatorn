#!/bin/sh

cd ..

echo
echo Downloading CSS/JavaScript ...

curl https://d12wzx9jhww7k1.cloudfront.net/scripts/customDomain.dabd7ec8.js > www/js/weld.js
curl https://d12wzx9jhww7k1.cloudfront.net/styles/customdomain.c8d3ccf0.css > www/css/weld.css


echo
echo Downloading images ...

cd www/img

curl -O -J 'https://weld-images.imgix.net/534fd70294b7ec0b00000002/-KQec1Ao-6F627i_s8fX/photo-1446733993804-c62a351c7239_34436.jpg'

cd ../..


echo
echo cordova build ...

cordova build
