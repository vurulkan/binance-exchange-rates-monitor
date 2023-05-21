FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl jq bc

COPY binance_script.sh /app/binance_script.sh
WORKDIR /app

RUN chmod +x binance_script.sh

ENTRYPOINT ["./binance_script.sh"]