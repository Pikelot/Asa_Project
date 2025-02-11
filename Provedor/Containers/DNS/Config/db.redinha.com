;
; BIND data file for local loopback interface
;
$ORIGIN redinha.com.
$TTL    604800

@   IN  SOA ns.redinha.com. root.redinha.com. (
                2       ; Serial
          604800       ; Refresh
            86400       ; Retry
          2419200       ; Expire
          604800 )    ; Negative Cache TTL
;
@   IN  NS  ns.redinha.com.
@   IN  A   10.0.2.15

ns      IN  A   10.0.2.15
mail    IN  A   10.0.2.15
www     IN  A   10.0.2.15
proxy   IN  CNAME www