FROM arm64v8/ubuntu:latest

RUN apt update && apt install openssh-server sudo git build-essential manpages-dev valgrind -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 username 

RUN  echo 'username:password' | chpasswd

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]