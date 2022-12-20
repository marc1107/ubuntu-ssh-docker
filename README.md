# ubuntu-ssh-docker
Ubuntu Docker with SSH pre-configured

Usage:

  1.  Docker has to be installed on your device
  2.  Navigate to the Dockerfile (ARM folder for M1/M2 Macs or other ARM CPUs) and download
  3.  Change the username and password in "useradd" line and in "echo" line
  4.  Build the image by running "docker build -t ubuntu-ssh-docker ."
  5.  Finally run "docker run ubuntu-ssh-docker -p 22:22". You can now connect via SSH by running "ssh username@127.0.0.1"
