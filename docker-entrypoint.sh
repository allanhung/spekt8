#!/bin/bash

echo '---------------- environments --------'
echo HTTP_HOST: $HTTP_HOST

find . -iname "*.js" | xargs sed -i -e "s/localhost:3000/$HTTP_HOST/g"
npm run server
