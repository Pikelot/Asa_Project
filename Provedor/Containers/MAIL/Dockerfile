FROM ubuntu:latest

RUN apt update --fix-missing -y
RUN apt upgrade -y
RUN apt-get install postfix dovecot-imapd dovecot-pop3d syslog-ng -y

# Add users
RUN useradd -m usuario
RUN useradd -m usuario2
RUN echo "usuario:redes" | chpasswd
RUN echo "usuario2:redes" | chpasswd

# Criar diretório temporário para Maildir
RUN mkdir -p /maildata/usuario/Maildir /maildata/usuario2/Maildir && \
    chown -R usuario:usuario /maildata/usuario && \
    chown -R usuario2:usuario2 /maildata/usuario2 && \
    chmod -R 700 /maildata/*

# Copiar script de inicialização
COPY init.sh /init.sh
RUN chmod +x /init.sh

ENTRYPOINT ["/init.sh"]
