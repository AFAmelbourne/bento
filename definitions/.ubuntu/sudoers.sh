#!/bin/bash -eux
sed -i -e '/Defaults\s\+env_reset/a Defaults\texempt_group=sudo' /etc/sudoers
sed -i -r 's/%sudo\s+ALL=\(ALL:ALL\)\s+ALL/%sudo   ALL=NOPASSWD:   ALL/g' /etc/sudoers