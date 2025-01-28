;
; BIND data file for local loopback interface
;
$ORIGIN praia.domeio.com.
$TTL	604800

@	IN	SOA	@ root (
			      1		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS	ns
@	IN	MX	10	mail.praia.domeio.com
@	IN	A	10.25.1.152

ns	IN	A	10.25.1.152
mail	IN	A	10.25.1.152
www	IN	A	10.25.1.152
proxy	IN	CNAME	www