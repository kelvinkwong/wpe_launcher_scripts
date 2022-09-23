#!/bin/bash

if [[ -f ~/.env ]]
then
	. ~/.env
else
	echo 'export ENV_IP=10.0.0.2' > ~/.env
	echo 'export ENV_INSPECT_APPS=$ENV_IP:9201' >> ~/.env
	echo 'export ENV_INSPECT_FOXTEL=$ENV_IP:9222' >> ~/.env
fi

echo "[$0] enter iq ip address (${ENV_IP}):"
read ip

[[ -z "$ip" ]] && exit 1

sed -i "s/export ENV_IP.*/export ENV_IP=${ip}/g" ~/.env 
