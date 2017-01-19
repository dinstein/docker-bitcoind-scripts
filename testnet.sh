#!/bin/bash

sudo docker volume create --name=bitcoind-data-testnet

sudo docker run -v bitcoind-data-testnet:/bitcoin --name=bitcoind-node-testnet -d \
        -p 18333:18333 \
        -p 127.0.0.1:18332:18332 \
        -v $(pwd)/testnet-bitcoin.conf:/bitcoin/.bitcoin/bitcoin.conf \
        dinstein/bitcoind

# sudo docker logs -f bitcoind-node-testnet
