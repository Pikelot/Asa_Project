FROM ubuntu:latest

RUN apt update && apt install -y openssh-server
RUN mkdir /var/run/sshd

# Set root password
RUN echo 'root:password' | chpasswd

# Allow root login
RUN sed -i 's/PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Ensure SSH directory exists and has correct permissions
RUN mkdir -p /root/.ssh && chmod 700 /root/.ssh

# Copy password and shadow files from shared volume
COPY /shared/passwd /etc/passwd
COPY /shared/shadow /etc/shadow
RUN chmod 644 /etc/passwd && chmod 600 /etc/shadow

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D"]
