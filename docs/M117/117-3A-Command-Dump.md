```bash
PS C:\> ipconfig /?

VERWENDUNG:
    ipconfig [/allcompartments] [/? | /all |
                                 /renew [adapter] | /release [adapter] |
                                 /renew6 [adapter] | /release6 [adapter] |
                                 /flushdns | /displaydns | /registerdns |
                                 /showclassid adapter |
                                 /setclassid adapter [classid] |
                                 /showclassid6 adapter |
                                 /setclassid6 adapter [classid] ]

wobei:
    adapter             Verbindungsname
                       (Die Platzhalter * und ? sind zulässig, siehe Beispiele)

    Optionen:
       /?               Zeigt diese Hilfenachricht an.
       /all             Zeigt alle Konfigurationsinformationen an.
       /release         Gibt die IPv4-Adresse für den angegebenen Adapter frei.
       /release6        Gibt die IPv6-Adresse für den angegebenen Adapter frei.
       /renew           Erneuert die IPv4-Adresse für den angegebenen Adapter.
       /renew6          Erneuert die IPv6-Adresse für den angegebenen Adapter.
       /flushdns        Leert den DNS-Konfliktlösercache.
       /registerdns     Aktualisiert alle DHCP-Leases und registriert die DNS-Namen erneut.
       /displaydns      Zeigt den Inhalt des DNS-Konfliktlösercaches an.
       /showclassid     Zeigt alle für den Adapter zugelassenen DHCP-Klassen-IDs an.
       /setclassid      Ändert die DHCP-Klassen-ID.
       /showclassid6    Zeigt alle für den Adapter zugelassenen IPv6-DHCP-Klassen-IDs an.
       /setclassid6     Ändert die IPv6-DHCP-Klassen-ID.
```

```bash
PS C:\> ipconfig

Windows-IP-Konfiguration


Ethernet-Adapter Ethernet:

   Verbindungsspezifisches DNS-Suffix:
   Verbindungslokale IPv6-Adresse  . : fe80::10a:120a:2684:5306%12
   IPv4-Adresse (Auto. Konfiguration): 169.254.223.103
   Subnetzmaske  . . . . . . . . . . : 255.255.0.0
   Standardgateway . . . . . . . . . :

Unbekannter Adapter LAN-Verbindung:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:

Drahtlos-LAN-Adapter LAN-Verbindung* 3:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:

Drahtlos-LAN-Adapter LAN-Verbindung* 12:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:

Ethernet-Adapter VMware Network Adapter VMnet1:

   Verbindungsspezifisches DNS-Suffix:
   Verbindungslokale IPv6-Adresse  . : fe80::8e52:fea:b41b:fa8e%24
   IPv4-Adresse  . . . . . . . . . . : 192.168.23.1
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Standardgateway . . . . . . . . . :

Ethernet-Adapter VMware Network Adapter VMnet8:

   Verbindungsspezifisches DNS-Suffix:
   Verbindungslokale IPv6-Adresse  . : fe80::54db:d6f2:9391:ec22%22
   IPv4-Adresse  . . . . . . . . . . : 192.168.174.1
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Standardgateway . . . . . . . . . :

Drahtlos-LAN-Adapter WLAN:

   Verbindungsspezifisches DNS-Suffix:
   Verbindungslokale IPv6-Adresse  . : fe80::2456:9b56:a5a0:ed1b%23
   IPv4-Adresse  . . . . . . . . . . : 10.40.170.76
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Standardgateway . . . . . . . . . : 10.40.170.141
```

```bash
PS C:\> ipconfig /all

Windows-IP-Konfiguration

   Hostname  . . . . . . . . . . . . : Matteo-Lenovo
   Primäres DNS-Suffix . . . . . . . :
   Knotentyp . . . . . . . . . . . . : Hybrid
   IP-Routing aktiviert  . . . . . . : Nein
   WINS-Proxy aktiviert  . . . . . . : Nein

Ethernet-Adapter Ethernet:

   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : VirtualBox Host-Only Ethernet Adapter
   Physische Adresse . . . . . . . . : 0A-00-27-00-00-0C
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja
   Verbindungslokale IPv6-Adresse  . : fe80::10a:120a:2684:5306%12(Bevorzugt)
   IPv4-Adresse (Auto. Konfiguration): 169.254.223.103(Bevorzugt)
   Subnetzmaske  . . . . . . . . . . : 255.255.0.0
   Standardgateway . . . . . . . . . :
   DHCPv6-IAID . . . . . . . . . . . : 168427559
   DHCPv6-Client-DUID. . . . . . . . : 00-01-00-01-2F-47-BB-8F-F4-7B-09-9E-0C-73
   NetBIOS über TCP/IP . . . . . . . : Aktiviert

Unbekannter Adapter LAN-Verbindung:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : TAP-Windows Adapter V9
   Physische Adresse . . . . . . . . : 00-FF-FA-27-56-5C
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja

Drahtlos-LAN-Adapter LAN-Verbindung* 3:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : Microsoft Wi-Fi Direct Virtual Adapter #3
   Physische Adresse . . . . . . . . : F4-7B-09-9E-0C-74
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja

Drahtlos-LAN-Adapter LAN-Verbindung* 12:

   Medienstatus. . . . . . . . . . . : Medium getrennt
   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : Microsoft Wi-Fi Direct Virtual Adapter #4
   Physische Adresse . . . . . . . . : F6-7B-09-9E-0C-73
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja

Ethernet-Adapter VMware Network Adapter VMnet1:

   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : VMware Virtual Ethernet Adapter for VMnet1
   Physische Adresse . . . . . . . . : 00-50-56-C0-00-01
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja
   Verbindungslokale IPv6-Adresse  . : fe80::8e52:fea:b41b:fa8e%24(Bevorzugt)
   IPv4-Adresse  . . . . . . . . . . : 192.168.23.1(Bevorzugt)
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Lease erhalten. . . . . . . . . . : Donnerstag, 18. September 2025 13:15:51
   Lease läuft ab. . . . . . . . . . : Donnerstag, 18. September 2025 15:30:51
   Standardgateway . . . . . . . . . :
   DHCP-Server . . . . . . . . . . . : 192.168.23.254
   DHCPv6-IAID . . . . . . . . . . . : 1023430742
   DHCPv6-Client-DUID. . . . . . . . : 00-01-00-01-2F-47-BB-8F-F4-7B-09-9E-0C-73
   NetBIOS über TCP/IP . . . . . . . : Aktiviert

Ethernet-Adapter VMware Network Adapter VMnet8:

   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : VMware Virtual Ethernet Adapter for VMnet8
   Physische Adresse . . . . . . . . : 00-50-56-C0-00-08
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja
   Verbindungslokale IPv6-Adresse  . : fe80::54db:d6f2:9391:ec22%22(Bevorzugt)
   IPv4-Adresse  . . . . . . . . . . : 192.168.174.1(Bevorzugt)
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Lease erhalten. . . . . . . . . . : Donnerstag, 18. September 2025 13:15:51
   Lease läuft ab. . . . . . . . . . : Donnerstag, 18. September 2025 15:30:51
   Standardgateway . . . . . . . . . :
   DHCP-Server . . . . . . . . . . . : 192.168.174.254
   DHCPv6-IAID . . . . . . . . . . . : 1040207958
   DHCPv6-Client-DUID. . . . . . . . : 00-01-00-01-2F-47-BB-8F-F4-7B-09-9E-0C-73
   Primärer WINS-Server. . . . . . . : 192.168.174.2
   NetBIOS über TCP/IP . . . . . . . : Aktiviert

Drahtlos-LAN-Adapter WLAN:

   Verbindungsspezifisches DNS-Suffix:
   Beschreibung. . . . . . . . . . . : Intel(R) Wi-Fi 6 AX201 160MHz
   Physische Adresse . . . . . . . . : DE-9F-C0-E9-89-9D
   DHCP aktiviert. . . . . . . . . . : Ja
   Autokonfiguration aktiviert . . . : Ja
   Verbindungslokale IPv6-Adresse  . : fe80::2456:9b56:a5a0:ed1b%23(Bevorzugt)
   IPv4-Adresse  . . . . . . . . . . : 10.40.170.76(Bevorzugt)
   Subnetzmaske  . . . . . . . . . . : 255.255.255.0
   Lease erhalten. . . . . . . . . . : Donnerstag, 18. September 2025 14:36:14
   Lease läuft ab. . . . . . . . . . : Donnerstag, 18. September 2025 15:36:13
   Standardgateway . . . . . . . . . : 10.40.170.141
   DHCP-Server . . . . . . . . . . . : 10.40.170.141
   DHCPv6-IAID . . . . . . . . . . . : 400465856
   DHCPv6-Client-DUID. . . . . . . . : 00-03-00-01-DE-9F-C0-E9-89-9D
   DNS-Server  . . . . . . . . . . . : 10.40.170.141
   NetBIOS über TCP/IP . . . . . . . : Aktiviert
```