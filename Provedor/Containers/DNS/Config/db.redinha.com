;
; BIND data file for redinha.com
;
$ORIGIN redinha.com.
$TTL    604800

@       IN  SOA ns.redinha.com. admin.redinha.com. (
                2024060101      ; Serial (formato AAAAMMDDXX)
                3600            ; Refresh
                1800            ; Retry
                1209600         ; Expire
                86400 )         ; Negative Cache TTL

; Nameservers
@       IN  NS  ns.redinha.com.

; Endereços IP
@       IN  A   192.168.0.3       ; IP do servidor DNS (provedor)
ns      IN  A   192.168.0.3       ; Nameserver
mail    IN  A   192.168.0.3       ; Servidor de e-mail
www     IN  A   192.168.0.3       ; Servidor web
web     IN  A   192.168.0.3       ; Servidores web
proxy   IN  CNAME www           ; Proxy reverso (aponta para www)