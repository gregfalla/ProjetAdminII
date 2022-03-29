$ORIGIN l2-1.ephec-ti.be.
$TTL  604800
@       IN      SOA     ns.l2-1.ephec-ti.be. he201939.students.ephec.be. (
                        1       ; Serial
                        604800  ; Refresh
                        86400   ; Retry
                        2419200 ; Expire
                        604800 ); Negative Cache TTL
;
; NS configs
            IN      NS      ns.l2-1.ephec-ti.be.
            IN      MX  10  mail
ns          IN      A       176.96.231.176


; Web
b2b         IN      A       176.96.231.176
www         IN      A       176.96.231.176

; Mail
mail        IN      A       176.96.231.176
smtp        IN      CNAME   mail


;VoIP
_sip._udp       SRV     10      100       5060        sip
_sip._tcp       SRV     10       100       5060        sip
sip             IN          A       176.96.231.176
