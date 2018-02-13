FROM nvidia/cuda:9.0-base
MAINTAINER Leonardo Loures <luvres@hotmail.com>

## References:
# https://minergate.com/altminers/ewbf-cuda-btg
# https://github.com/poolgold/ewbf-miner-btg-edition/releases

COPY miner /usr/bin

ENV USER="1uvr3z@gmail.com" \
	POOL="btg.pool.minergate.com" \
	PORT=3257

CMD miner --server $POOL --user $USER --pass x --port $PORT



