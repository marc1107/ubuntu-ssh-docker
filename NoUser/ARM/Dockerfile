FROM arm64v8/ubuntu:latest

RUN apt update && apt install  openssh-server sudo -y && apt install git -y && apt install build-essential -y && apt install manpages-dev -y && apt install valgrind -y

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]