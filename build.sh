#!/bin/bash
nodeV=`nvm list|grep -E '\s+18\.'`
if [ -n "${nodeV}" ]; then
  nvm current|grep -E '\s+18\.' || (nvm use $nodeV && sleep 2)
fi
npm install --registry=https://registry.npmmirror.com
npm run build

if [ $? -eq 1 ]; then
  exit 1
fi
rm -rf dist.tar
tar cvf dist.tar dist