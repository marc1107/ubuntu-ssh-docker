# ubuntu-ssh-docker
Ubuntu Docker with SSH pre-configured

Tools like gcc, make, valgrind and git are also pre-installed

- **x86**:    for CPU's based on the x86 Architecture (Intel)
- **ARM**:    for CPU's based on the ARM Architecture (Apple M1/M2 or others)
- **NoUser**: if you don't want to configure username and password

## Usage (using the default image)

**Default Username:** admin

**Default Password:** passw123

  1.  For the x86 image run :
      ```
      docker run --name ubuntu-ssh -p 22:22 marc1107/ubuntu-ssh-docker:x86
      ```
      For the ARM image run:
      ```
      docker run --name ubuntu-ssh -p 22:22 marc1107/ubuntu-ssh-docker:arm
      ```
  2.  You can now connect via SSH by running:
      ```
      ssh admin@localhost
      ```
      Alternatively run:
      ```
      ssh admin@127.0.0.1
      ```

If you want to change the username form admin to your-username run:
```
usermod -l your-username admin
```
To change the password just run:
```
passwd
```


## Usage (building the image yourself)

  1.  Docker has to be installed on your device
  2.  Clone or download the repository
  3.  Locate the Dockerfile for your system in the Folder **x86** or **ARM** and open it in a Text Editor
  4.  Change the username and password in `useradd` line and in `echo` line to your username and password
  5.  Open a Terminal and navigate to the folder in which the modified Dockerfile is located
  6.  Build the image by running the command **(with the `.`at the end!)**:
      ```
      docker build -t ubuntu-ssh-docker .
      ```
  7.  Finally run:
      ```
      docker run --name ubuntu-ssh -p 22:22 ubuntu-ssh-docker
      ```
  8.  You can now connect via SSH by running:
      ```
      ssh your-username@localhost
      ```
      Alternatively run:
      ```
      ssh your-username@127.0.0.1
      ```

**To start the container when it stopped just run:**
```
docker start ubuntu-ssh
```

###### Source
[Creating ubuntu Dockerfile with openssh-server](https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i)
