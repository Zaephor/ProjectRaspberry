#!/bin/bash
/usr/bin/flock -n /tmp/ProjectRaspberry.lock /usr/bin/ansible-pull --accept-host-key --checkout=master --clean --directory=/ProjectRaspberry --force --url=https://github.com/Zaephor/ProjectRaspberry.git >>/var/log/ProjectRaspberry_playbook.log 2>&1
