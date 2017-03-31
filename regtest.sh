#!/bin/bash

# sudo usermod -aG docker {username}

docker volume create --name=bitcoind-data-regtest

docker run -v bitcoind-data-regtest:/bitcoin --name=bitcoind-node-regtest -d --rm \
        --expose=23000-23199 \
        -e "RPCPASSWORD=dinstein@tyy" \
        dinstein/bitcoind regtest_start 5

# docker logs -f bitcoind-node-regtest
