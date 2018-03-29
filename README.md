## EWBF's Zcash CUDA miner whit Ubuntu GPU NVIDIA
-----

#### NVIDIA Docker (https://github.com/NVIDIA/nvidia-docker)
```
# Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1_amd64.tar.xz
sudo tar --strip-components=1 -C /usr/bin -xvf /tmp/nvidia-docker*.tar.xz && rm /tmp/nvidia-docker*.tar.xz

# Run nvidia-docker-plugin
sudo -b nohup nvidia-docker-plugin > /tmp/nvidia-docker.log

# Test nvidia-smi
nvidia-docker run --rm nvidia/cuda nvidia-smi
```

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
-e USERPASS="x" \
-e CUDADEVICES="0" \
izone/ewbf-miner
```

#### Zcash.flypool
```
nvidia-docker run -ti --rm --name Zcash \
-e POOL="eu1-zcash.flypool.org" \
-e PORT="3333" \
-e USER="t1UuXA2PPFHjzJJ4xjrUE4WkzAZp4HyNims.1uvr3z" \
-e USERPASS="gtx1050" \
-e CUDADEVICES="0" \
izone/ewbf-miner
```

#### Build
```
docker build -t izone/ewbf-miner .
```
