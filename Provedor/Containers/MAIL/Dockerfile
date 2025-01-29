FROM ubuntu:latest

RUN apt update --fix-missing -y

RUN apt upgrade -y

RUN apt-get update

RUN apt-get install postfix dovecot-imapd dovecot-pop3d syslog-ng -y

COPY main.cf /etc/postfix

#adicionar usuário
RUN useradd -m usuario
RUN useradd -m usuario2

RUN echo "usuario:redes" | chpasswd
RUN echo "usuario2:redes" | chpasswd

CMD ["sh", "-c", "service syslog-ng start ; service postfix start ; service dovecot start; tail -F /var/log/mail.log"]