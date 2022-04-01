# Main Router


## Network subnets

This router does not support multiple subnets.

### Subnet 1

Network Address: 192.168.50.0/20
Netmask: 255.255.240.0
Usable Ranges: 192.168.48.2 - 192.168.63.254

#### Router
Hostname: RT-AX92U-EC70
Ip: 192.168.50.1
Mask: 255.255.240.0
DHCP Range: 192.168.63.1 - 192.168.63.254
Default Gateway 192.168.50.1


## Net Ranges

192.168.48.2/24 - phisical Servers
192.168.49.0/24 - PROD Vms, containers and k8s services
192.168.50.0/24 - Main DHCP
192.168.51.0/24 - DEV Vms and containers and k8s services
