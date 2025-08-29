#!/bin/bash
echo "Starting HISD3 Service ..."
sleep 2

# Run the Java Program
java -jar ./hisd3Service.jar

# Wait
sleep 2
echo "Opening Google Chrome"
sleep 2

# Open Browser
google-chrome https://bo.ace-mc-bohol.com/login https://hisd3.lvh.me:4567/ping

# Read Me
# Cashiering Script

# Check first if Java is installed by sudo apt if yes use this
# If java is installed using only download and extract put in the path

# Executable Command
# chmod +x /hisd3-cashier.sh
