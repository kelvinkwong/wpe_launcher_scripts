#!/bin/bash

[[ -f ~/.env ]] && . ~/.env

echo [$0] killing wpe on ${ENV_IP}
ssh -l root -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null ${ENV_IP} "killall cog WPEWebProcess WPENetworkProcess"
