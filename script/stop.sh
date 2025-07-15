#!/bin/bash
echo "Stopping old Java process..."
pkill -f 'java -jar' || echo "No process found."
