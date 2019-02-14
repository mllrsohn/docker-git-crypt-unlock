# docker-git-crypt-unlock ![https://cloud.docker.com/u/steffenmllr/repository/docker/steffenmllr/docker-git-crypt-unlock](https://img.shields.io/docker/automated/steffenmllr/docker-git-crypt-unlock.svg?style=flat-square)

> Alpine image with git-crypt [used as a github action here](https://github.com/mllrsohn/actions)

### Usage

#### 1. Get your key:
```sh
GIT_CRYPT_KEY = `git-crypt export-key secret.key | base64`
```

#### 2. Set the key in the container
```sh
docker run -it -e GIT_CRYPT_KEY="YOUR_KEY" mllrsohn/docker-git-crypt-unlock
```
