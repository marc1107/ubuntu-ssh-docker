FROM ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y && apt install git -y && apt install build-essential -y && apt install manpages-dev -y && apt install valgrind -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 username 

RUN  echo 'username:password' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]