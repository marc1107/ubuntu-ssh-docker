# ubuntu-ssh-docker
Ubuntu Docker with SSH pre-configured

Tools like gcc, make, valgrind and git are also pre-installed

- **x86**:    for CPU's based on the x86 Architecture (Intel)
- **ARM**:    for CPU's based on the ARM Architecture (Apple M1/M2 or others)
- **NoUser**: if you don't want to configure username and password

## Usage

  1.  Docker has to be installed on your device
  2.  Clone or download the repository
  3.  Locate the Dockerfile you need in the Folders **x86** or **ARM** and open it in a Text Editor (x86 for x86 Ubuntu and ARM for Macs with Apple Silicon Chip or other ARM Systems)
  4.  Change the username and password in `useradd` line and in `echo` line to your username and password
  5.  Open a Terminal and navigate to the folder in which the modified Dockerfile is located
  6.  Build the image by running the command `docker build -t ubuntu-ssh-docker .` **(with the `.`at the end!)**
  7.  Finally run `docker run --name ubuntu-ssh -p 22:22 ubuntu-ssh-docker` 
  8.  You can now connect via SSH by running `ssh username@localhost` or `ssh username@127.0.0.1`

**To start the container when it stopped just run `docker start ubuntu-ssh` or click play on the Container in the Docker Desktop App**
