#!/bin/bash

# env
cp /home/admin/user/.bashrc /home/admin/
cp /home/admin/user/ssh/* /home/admin/.ssh/

chown -R admin /home/admin
su admin