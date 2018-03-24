## EWBF's Zcash CUDA miner whit Ubuntu GPU NVIDIA
-----

### Run

#### Nicehash (cryptonight) - Default
```
nvidia-docker run -ti --rm --name EWBF-Miner izone/ewbf-miner
```
```
nvidia-docker run -ti --rm --name Nicehash \
-e POOL="equihash.eu.nicehash.com" \
-e PORT=3357 \
-e USER="3PThBqHfb1UVcZaZXtPAY4SC4fZNBNqCs7.1uvr3z" \
-e USERPASS="gtx1050" \
-e CUDADEVICES="0"
izone/ewbf-miner
```

#### Zcash.flypool
```
nvidia-docker run -ti --rm --name Zcash \
-e POOL="eu1-zcash.flypool.org" \
-e PORT="3333" \
-e USER="t1UuXA2PPFHjzJJ4xjrUE4WkzAZp4HyNims.1uvr3z" \
-e USERPASS="gtx1050" \
-e CUDADEVICES="0"
izone/ewbf-miner
```

#### Build
```
docker build -t izone/ewbf-miner .
```
