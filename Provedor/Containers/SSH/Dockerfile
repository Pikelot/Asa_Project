FROM ubuntu:latest

RUN apt update && apt install -y openssh-server
RUN mkdir /var/run/sshd

# Set root password
RUN echo 'root:asaproc' | chpasswd

# Allow root login
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
