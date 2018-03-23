FROM nvidia/cuda:9.0-base
MAINTAINER Leonardo Loures <luvres@hotmail.com>

## References:
# https://minergate.com/altminers/ewbf-cuda-btg
# https://github.com/poolgold/ewbf-miner-btg-edition/releases

ENV \
	POOL="equihash.eu.nicehash.com" \
	PORT="3357" \
	USER="3PThBqHfb1UVcZaZXtPAY4SC4fZNBNqCs7.1uvr3z"

COPY miner /usr/bin

CMD miner --server $POOL --port $PORT --user $USER   --pass x --cuda_devices 0
