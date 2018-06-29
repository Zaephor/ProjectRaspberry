#!/bin/bash
serf agent -discover=$(arp -n $(ip route|awk '/default/ { print $3 }') | awk '!/Address/{print $3}' | tr -d ':')
