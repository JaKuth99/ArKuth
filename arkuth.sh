#!/bin/bash

    bash 0-preinstall.sh
    arch-chroot /mnt /root/ArKuth/1-setup.sh
    source /mnt/root/ArKuth/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArKuth/2-user.sh
    arch-chroot /mnt /root/ArKuth/3-post-setup.sh