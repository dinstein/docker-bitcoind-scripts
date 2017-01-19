#!/bin/bash

docker volume create --name=bitcoind-data-testnet

docker run -v bitcoind-data-testnet:/bitcoin --name=bitcoind-node-testnet -d \
        -p 8333:8333 \
        -p 18333:18333 \
        -p 127.0.0.1:8332:8332 \
        -p 127.0.0.1:18332:18332 \
        -v testnet-bitcoin.conf:/bitcoin/.bitcoin/bitcoin.conf \
        dinstein/bitcoind

# docker logs -f bitcoind-node-testnet
