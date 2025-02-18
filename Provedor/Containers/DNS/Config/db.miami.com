;
; BIND data file for miami.com
;
$ORIGIN miami.com.
$TTL    604800

@       IN  SOA ns.miami.com. admin.miami.com. (
                2024060101      ; Serial (formato AAAAMMDDXX)
                3600            ; Refresh
                1800            ; Retry
                1209600         ; Expire
                86400 )         ; Negative Cache TTL

; Nameservers
@       IN  NS  ns.miami.com.

; Endereços IP
@       IN  A   10.0.2.15       ; IP do servidor DNS (provedor)
ns      IN  A   10.0.2.15       ; Nameserver
mail    IN  A   10.0.2.15       ; Servidor de e-mail
www     IN  A   10.0.2.15       ; Servidor web
web     IN  A   10.0.2.15       ; Servidores web
proxy   IN  CNAME www           ; Proxy reverso (aponta para www)