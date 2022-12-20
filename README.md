# ubuntu-ssh-docker
Ubuntu Docker with SSH pre-configured

Tools like gcc, make, valgrind and git are also pre-installed

## Usage

  1.  Docker has to be installed on your device
  2.  Navigate to the Dockerfile (ARM folder for M1/M2 Macs or other ARM CPUs) and download
  3.  Change the username and password in `useradd` line and in `echo` line
  4.  Build the image by running ```docker build -t ubuntu-ssh-docker .```
  5.  Finally run `docker run --name ubuntu-ssh -p 22:22 ubuntu-ssh-docker` 
  6.  You can now connect via SSH by running `ssh username@127.0.0.1` or `ssh username@localhost`


To start the container when it stopped just run `docker start ubuntu-ssh`
