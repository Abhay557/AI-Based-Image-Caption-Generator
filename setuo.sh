#!/bin/bash

# Exit script on error
set -e

# Backend setup
echo "Setting up Backend..."
cd backend || exit
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
uvicorn main:app --reload &
cd ..

# Frontend setup
echo "Setting up Frontend..."
cd frontend || exit
npm install
npm start &

echo "Project is running. Backend: http://127.0.0.1:8000, Frontend: http://localhost:3000"
