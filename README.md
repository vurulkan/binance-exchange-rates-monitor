Run "docker build -t binance-script ."

Run container from this command. exchange_rates.txt will be create in pwd

docker run -d -v "$(pwd)":/app binance-script