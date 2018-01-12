#!/bin/bash
lts=`ndenv install -l | grep v8. | tail -n 1`
ndenv install ${lts} >/dev/null 2>&1
ndenv global ${lts} >/dev/null 2>&1
