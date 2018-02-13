## Bitcoin Gold Miner whit Ubuntu GPU NVIDIA in Minergate
##### Default is my user "1uvr3z@gmail.com"
-----

#### Run
```
nvidia-docker run -ti --rm --name BTG izone/btg-cuda
```

#### Run
```
nvidia-docker run -ti --rm --name BTG \
-e USER="1uvr3z@gmail.com" \
-e POOL="btg.pool.minergate.com" \
-e PORT=3257 \
izone/btg-cuda
```

#### Build
```
docker build -t izone/btg-cuda .
```
