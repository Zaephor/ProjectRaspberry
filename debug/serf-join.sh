#!/bin/bash
iface=$(ip route | awk '/default/{print $5}')
discover=$(arp -n $(ip route|awk '/default/ { print $3 }') | awk '!/Address/{print $3}' | tr -d ':')
advertise=$(ip route get 8.8.8.8 | awk 'NR==1 {print $NF}')
serf agent -discover=${discover} -iface=${iface} -advertise=${advertise}
