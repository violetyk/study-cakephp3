#!/bin/bash

if [ -n $(which greadlink) ]; then
  DIR=$(dirname $(greadlink -f ${0}))
else
  DIR=$(dirname $(readlink -f ${0}))
fi
php -S localhost:8000 -t $DIR/../app/webroot/
