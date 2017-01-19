#!/bin/bash

sudo docker volume create --name=bitcoind-data-mainchain

sudo docker run -v bitcoind-data-mainchain:/bitcoin --name=bitcoind-node-mainchain -d \
        -p 8333:8333 \
        -p 127.0.0.1:8332:8332 \
        -v $(pwd)/mainchain-bitcoin.conf:/bitcoin/.bitcoin/bitcoin.conf \
        dinstein/bitcoind

# sudo docker logs -f bitcoind-node-mainchain
