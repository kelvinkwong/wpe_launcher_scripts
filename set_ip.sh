#!/bin/bash

if [[ -f ~/.env ]]
then
	. ~/.env
else
	echo "ENV_IP=10.0.0.2" > ~/.env
fi

echo "[$0] enter iq ip address (${ENV_IP}):"
read ip

[[ -z "$ip" ]] && exit 1

sed -i "s/export ENV_IP.*/export ENV_IP=${ip}/g" ~/.env 
