FROM ubuntu:latest

RUN apt update --fix-missing -y
RUN apt upgrade -y
RUN apt-get update
RUN apt-get install postfix dovecot-imapd dovecot-pop3d syslog-ng -y

# Add users
RUN useradd -m -u 1001 usuario
RUN useradd -m -u 1002 usuario2
RUN echo "usuario:redes" | chpasswd
RUN echo "usuario2:redes" | chpasswd

# Create necessary directories and set permissions
RUN mkdir -p /var/spool/postfix/private && \
    chown postfix:postfix /var/spool/postfix/private && \
    chmod 0750 /var/spool/postfix/private

RUN mkdir -p /etc/dovecot/ssl && \
    openssl req -x509 -nodes -days 3650 -newkey rsa:2048 \
      -keyout /etc/dovecot/ssl/dovecot.key \
      -out /etc/dovecot/ssl/dovecot.pem \
      -subj "/CN=domail.domeio.com"

# Create Maildirs and set permissions
RUN mkdir -p /home/usuario/Maildir /home/usuario2/Maildir && \
    chown -R usuario:usuario /home/usuario && \
    chown -R usuario2:usuario2 /home/usuario2 && \
    chmod -R 700 /home/*/Maildir

RUN chown dovecot:dovecot /etc/dovecot/private/dovecot.pem && \
    chmod 600 /etc/dovecot/private/dovecot.pem

CMD ["sh", "-c", "service syslog-ng start ; service dovecot start && service postfix start; tail -F /var/log/mail.log"]