#!/bin/bash
if [ -n "`nvm list|grep 18.`" ]; then
  nvm current|grep v18 || (nvm use 18.14.2 && sleep 2)
fi
npm install
npm run build
rm -rf dist.tar
tar cvf dist.tar dist