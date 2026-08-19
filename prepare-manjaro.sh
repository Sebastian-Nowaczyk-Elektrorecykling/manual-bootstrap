#!/bin/bash

pacman -Syu --needed --noconfirm open-iscsi

cat > /etc/modules-load.d/iscsi.conf <<'MODULES'
iscsi_tcp
MODULES

cat > /etc/sysctl.d/99-kubernetes-values.conf <<'SYSCTL'
net.ipv4.ip_forward = 1
net.ipv6.conf.all.forwarding = 1
net.bridge.bridge-nf-call-iptables = 1
net.bridge.bridge-nf-call-ip6tables = 1
fs.inotify.max_user_instances = 8192
fs.inotify.max_user_watches = 1048576
vm.max_map_count = 262144
SYSCTL
sysctl --system >/dev/null

if ! systemctl enable --now iscsid.service; then
  systemctl enable --now iscsid.socket || die "Unable to start iscsid"
fi
