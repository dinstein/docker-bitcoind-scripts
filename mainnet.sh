#!/bin/bash

docker volume create --name=bitcoind-data-mainnet

docker run -v bitcoind-data-mainnet:/bitcoin --name=bitcoind-node-mainnet -d \
        -p 8333:8333 \
        -p 127.0.0.1:8332:8332 \
        -v $(pwd)/mainnet-bitcoin.conf:/bitcoin/.bitcoin/bitcoin.conf \
        dinstein/bitcoind

# docker logs -f bitcoind-node-mainnet
