#!/bin/sh

# Verifica se os Maildirs já existem no volume, se não, copia do backup interno
if [ ! -d "/home/usuario/Maildir" ]; then
    cp -r /maildata/usuario /home/
    chown -R usuario:usuario /home/usuario
fi

if [ ! -d "/home/usuario2/Maildir" ]; then
    cp -r /maildata/usuario2 /home/
    chown -R usuario2:usuario2 /home/usuario2
fi

# Iniciar serviços
service syslog-ng start
service dovecot start
service postfix start

# Manter container rodando
tail -F /var/log/mail.log
