#!/bin/bash

# sudo usermod -aG docker {username}

docker volume create --name=bitcoind-data-testnet

docker run -v bitcoind-data-testnet:/bitcoin --name=bitcoind-node-testnet -d \
        -p 18333:18333 \
        -p 127.0.0.1:18332:18332 \
        -p 192.168.0.1:18332:18332 \
        -v $(pwd)/testnet-bitcoin.conf:/bitcoin/.bitcoin/bitcoin.conf \
        dinstein/bitcoind

# docker logs -f bitcoind-node-testnet
