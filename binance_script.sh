#!/bin/bash

API_URL="https://api.binance.com/api/v3/klines"
SYMBOL="BTCUSDT"
INTERVAL="5m"
OUTPUT_FILE="exchange_rates.txt"

while true; do

    response=$(curl -s "${API_URL}?symbol=${SYMBOL}&interval=${INTERVAL}")


    close_price=$(echo "$response" | jq -r '.[-1][4]')


    timestamp=$(date +"%Y-%m-%d %H:%M:%S")

 
    echo "${timestamp}: ${close_price}" >> "${OUTPUT_FILE}"


    sleep 300
done

