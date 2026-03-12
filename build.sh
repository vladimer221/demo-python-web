#!/bin/bash

echo "Creating virtual environment"
python3 -m venv venv

echo "Activating environment"
source venv/bin/activate

echo "Installing dependencies"
pip install -r requirements.txt

echo "Starting application"
nohup python3 app/app.py > app.log 2>&1 &

sleep 3

echo "Running test"
pytest test

echo "Build finished successfully"
