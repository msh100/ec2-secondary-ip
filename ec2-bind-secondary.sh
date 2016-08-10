#!/bin/bash
# Add a secondary public IP address to an interface on EC2
# Marcus Hughes <marcus.hughes@3radical.com>
# TODO: Add IPs for a non-fixed amount of addresses

echo "Determining primary interface hardware address"
MAC=$(cat /sys/class/net/eth0/address)

echo "Retrieving list of IPs associated with primary interface"
SECONDARY=$(curl -s http://169.254.169.254/latest/meta-data/network/interfaces/macs/${MAC}/local-ipv4s)
SECONDARY=$(echo $SECONDARY | tr ' ' '\n' | tail -1)

echo "Secondary IP address for primary interface is ${SECONDARY}"

echo "Writing eth0:0 configuration"
echo "auto eth0:0
iface eth0:0 inet static
  address ${SECONDARY}
  netmask 255.255.255.0" > /etc/network/interfaces.d/eth0-0.cfg

echo "Bringing up the new interface alias, eth0:0"
ifup eth0:0