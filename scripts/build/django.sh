#!/bin/sh

# Copy the requirements file from the codebase into the Django Docker folder
cp codebase/omniport-backend/omniport/requirements.txt django/

# Enter the Django Docker folder
cd django/

# Build the container from the django folder and tag it
TIMESTAMP=$(date +"%s")
docker build --tag omniport-django:${TIMESTAMP} --tag omniport-django:latest .

# Remove the requirements file after it has served its purpose
rm requirements.txt