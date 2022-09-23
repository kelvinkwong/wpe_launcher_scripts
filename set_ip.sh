#!/bin/bash

[[ -f ~/.env ]] && . ~/.env

echo "[$0] enter iq ip address (${ENV_IP}):"
read ip

[[ -z "$ip" ]] && exit 1

sed -i "s/export ENV_IP.*/export ENV_IP=${ip}/g" ~/.env 
