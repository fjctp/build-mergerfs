# build-mergerfs
Build mergerfs from [github](https://github.com/trapexit/mergerfs) based on `opensuse/tumbleweed`

## Usage
1. Build a specific version of snapraid and copy the executable to current folder.
```
docker run -it --rm -v $PWD:/output -e VERSION=2.29.0 fjctp/build-mergerfs
```

2. Copy binary to folders and setup symbolic link for `mount`
```
sudo cp -r ./usr /
sudo ln -s /usr/local/sbin/mount.mergerfs /sbin/mount.mergerfs
```
