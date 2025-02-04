;
; BIND data file for local loopback interface
;
$ORIGIN domeio.com.
$TTL	604800

@   IN  SOA ns.domeio.com. root.domeio.com. (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns.domeio.com.
@	IN	MX	10	domail.domeio.com.
@	IN	A	10.0.2.15

ns      IN  A   10.0.2.15
domail  IN  A   10.0.2.15
webmail IN  A   10.0.2.15
www     IN  A   10.0.2.15
proxy   IN  CNAME www