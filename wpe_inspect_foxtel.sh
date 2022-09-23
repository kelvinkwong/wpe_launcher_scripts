#!/bin/bash

[[ -f ~/.env ]] && . ~/.env

[[ "$0" == *"apps"* ]] && inspect=${ENV_INSPECT_APPS}
[[ "$0" == *"foxtel"* ]] && inspect=${ENV_INSPECT_FOXTEL}

echo [$0] starting wpe debugger on ${inspect}
/usr/local/libexec/webkit2gtk-4.0/MiniBrowser inspector://${inspect}
