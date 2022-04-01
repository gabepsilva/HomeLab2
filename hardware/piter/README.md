# PiTER

PiTER is a Raspberry Pi 3 Model B (ARMv7) used as main DNS server.

## Spec

```
Quad Core 1.2GHz Broadcom BCM2837 64bit CPU
1GB RAM
BCM43438 wireless LAN and Bluetooth Low Energy (BLE) on board
100 Base Ethernet
40-pin extended GPIO
4 USB 2 ports
4 Pole stereo output and composite video port
Full size HDMI
CSI camera port for connecting a Raspberry Pi camera
DSI display port for connecting a Raspberry Pi touchscreen display
Micro SD port for loading your operating system and storing data
Upgraded switched Micro USB power source up to 2.5A
```

```
cat /proc/device-tree/model
Raspberry Pi 3 Model B Rev 1.2

cat /proc/cpuinfo
processor	: 0
model name	: ARMv7 Processor rev 4 (v7l)
BogoMIPS	: 38.40
Features	: half thumb fastmult vfp edsp neon vfpv3 tls vfpv4 idiva idivt vfpd32 lpae evtstrm crc32
CPU implementer	: 0x41
CPU architecture: 7
CPU variant	: 0x0
CPU part	: 0xd03
CPU revision	: 4
...

```
https://www.raspberrypi.com/products/raspberry-pi-3-model-b/


## Setup

* Download the latest OS image available. 
* Burn image to a SD
* Create the ssh file in the boot folder
* Insert the card into the Pi
* Connect the ethernet cable
* Power it on
* Get its IP assigned by DHCP (or manually assigned in the router)
* Update Ansible inventory
* Run the PiTER Ansible Script.

```bash
export ANSIBLE_CONFIG=ansible-files/ansible.cfg
newpassword=<new pass>
# First run
ansible-playbook --ask-pass -c paramiko --extra-vars "newpassword=$newpassword" hardware/piter/ansible/setup.yml
# Subsequent runs
ansible-playbook -c paramiko --skip-tags "system-user" hardware/piter/ansible/setup.yml
```

## Manual: too lazy to automate it now

copy `hardware/piter/apps` and `hardware/piter/monitoring` to the host and execute the docker compose files.

```bash
scp -r hardware/piter/apps pi@192.168.48.2:/home/pi
scp -r hardware/piter/monitoring pi@192.168.48.2:/home/pi

ssh pi@192.168.48.2

# TO INSTALL ADGUARD
cd apps/adguard
docker-compose up -d
# Restore AdGuardHome.yaml config file from backup 
docker restart adguardhome  

# TO INSTALL PIHOLE
cd apps/pihole
docker-compose up -d
# Restore AdGuardHome.yaml config file from backup 
docker restart pihole  
```

```bash
cd hardware/piter/monitoring
docker-compose up -d
```

## Grafana Dashboards

https://grafana.com/grafana/dashboards/14282
https://grafana.com/grafana/dashboards/11074