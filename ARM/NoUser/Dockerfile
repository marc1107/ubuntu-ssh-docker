FROM arm64v8/ubuntu:latest

RUN apt update && apt install openssh-server sudo git build-essential manpages-dev valgrind -y

RUN service ssh start

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]