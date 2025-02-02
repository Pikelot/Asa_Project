FROM ubuntu:latest

RUN apt update --fix-missing -y

RUN apt upgrade -y

RUN apt-get update

RUN apt-get install postfix dovecot-imapd dovecot-pop3d syslog-ng -y

#COPY main.cf /etc/postfix

#adicionar usuário
RUN useradd -m usuario
RUN useradd -m usuario2

RUN echo "usuario:redes" | chpasswd
RUN echo "usuario2:redes" | chpasswd

RUN mkdir -p /var/spool/postfix/private && \
    chown postfix:postfix /var/spool/postfix/private && \
    chmod 0750 /var/spool/postfix/private

RUN mkdir -p /etc/doudcourier/ssl && \
    openssl req -x509 -nodes -days 3650 -newkey rsa:2048 \
      -keyout /etc/doudcourier/ssl/dovecot.key \
      -out /etc/doudcourier/ssl/dovecot.pem \
      -subj "/CN=mail.praia.domeio.com"

# Crie Maildirs e defina permissões
RUN mkdir -p /home/usuario/Maildir /home/usuario2/Maildir && \
    chown -R usuario:usuario /home/usuario && \
    chown -R usuario2:usuario2 /home/usuario2 && \
    chmod -R 700 /home/*/Maildir

CMD ["sh", "-c", "service syslog-ng start ; service postfix start ; service dovecot start; tail -F /var/log/mail.log"]