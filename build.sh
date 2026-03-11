#!/bin/bash

echo "Creating virtual environment"
python3 -m venv venv

echo "Activating environment"
source venv/bin/activate

echo "Installing dependencies"
pip install -r requirements.txt

echo "Starting application"
python app/app.py &
APP_PID=$!

sleep 3

echo "Running tests"
pytest tests

echo "Stopping application"
kill $APP_PID

echo "Build finished successfully"
