#!/bin/bash
nodeV=`nvm list|grep -E '\s+18\.'`
if [ -n "${nodeV}" ]; then
  nvm current|grep -E '\s+18\.' || (nvm use $nodeV && sleep 2)
fi
npm run dev