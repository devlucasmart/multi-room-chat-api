#!/bin/bash

# Create app directory
mkdir app

# Create app/public directory
mkdir app/public

# Create app/public/css directory
mkdir app/public/css

# Create app/public/js directory
mkdir app/public/js

# Create app/public/images directory
mkdir app/public/images

# Create app/controllers directory
mkdir app/controllers

# Create app/models directory
mkdir app/models

# Create app/routes directory
mkdir app/routes

# Create app/views directory
mkdir app/views

# Create config/server.js
mkdir ./config/server.js

# Create app.js file
touch ./app.js

# execute installUtils.sh script
if [ -f installUtils.sh ]; then
  echo "Executando installUtils.sh script..."
  ./installUtils.sh
else
  echo "installUtils.sh não encontrado."
fi

# execute installUtils.sh script
if [ -f configServer.sh ]; then
  echo "Populando o app.js"
  ./configServer.sh
else
  echo "configServer.sh não encontrado."
fi