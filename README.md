# kewlos
kewlos is an operating system I made in NASM assembly

Run using `main.sh`

## Installation
### Dependencies
#### Mac
```bash
brew install qemu
brew install nasm
```
#### Debian
```bash
sudo apt-get install qemu
sudo apt-get install nasm
```
### Downloading
Replace version with the version you wish to download

```
git clone https://github.com/ninjamar/kewlos
```
### Running
Add `alias kewlos='(cd KEWLOSPATH && LD_LIBRARY_PATH=$LD_LIBRARY_PATH:KEWLOSPATH/lib && cd os && nasm -f bin boot.asm -o KEWLOSPATH/boot.bin && qemu-system-x86_64 KEWLOSPATH/boot.bin)'` to the default terminal startup file
You can then run using `kewlos`

### Updating
```bash
cd kewlos
git pull
```

## Todo
- Automate text display process
- Make utility file
