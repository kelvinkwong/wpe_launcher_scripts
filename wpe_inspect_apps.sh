#!/bin/bash

[[ -f ~/.env ]] && source ~/.env

[[ "$0" == *"apps"* ]] && inspect=${ENV_INSPECT_APPS}
[[ "$0" == *"foxtel"* ]] && inspect=${ENV_INSPECT_FOXTEL}

echo [$0] starting wpe debugger on ${inspect}
MiniBrowser inspector://${inspect}