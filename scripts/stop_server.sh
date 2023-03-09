#!/bin/bash
# Find the process ID (PID) of the Node.js server process
PID=$(ps aux | grep '[n]ode server.js' | awk '{print $2}')

# If the process ID exists, kill the process
if [[ -n $PID ]]; then
  echo "Stopping Node.js server with PID $PID"
  kill $PID
else
  echo "No Node.js server process found"
fi


