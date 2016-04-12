#!/usr/bin/env bash

echo "==="
echo "fallocate -l 4G /swapfile"
fallocate -l 4G /swapfile
echo "==="
sleep 1s

echo "==="
echo "ls -lh /swapfile"
ls -lh /swapfile
echo "==="
sleep 1s

echo "==="
echo "chmod 600 /swapfile"
chmod 600 /swapfile
echo "==="
sleep 1s

echo "==="
echo "ls -lh /swapfile"
ls -lh /swapfile
echo "==="
sleep 1s

echo "==="
echo "mkswap /swapfile"
mkswap /swapfile
echo "==="
sleep 1s

echo "==="
echo "swapon /swapfile"
swapon /swapfile
echo "==="

echo "==="
echo "swapon -s"
swapon -s
echo "==="
sleep 1s

echo "==="
echo "free -m"
free -m
echo "==="
sleep 1s

echo "==="
echo "echo \"/swapfile  none    swap    sw      0       0\" >> /etc/fstab"
echo "/swapfile  none    swap    sw      0       0" >> /etc/fstab
echo "==="
sleep 1s

echo "==="
echo "cat /proc/sys/vm/swappiness"
cat /proc/sys/vm/swappiness
echo "==="
sleep 1s

echo "==="
echo "echo \"vm.swappiness=10\" >> /etc/sysctl.conf"
echo "vm.swappiness=10" >> /etc/sysctl.conf
echo "==="
sleep 1s

echo "==="
echo "echo \"vm.vfs_cache_pressure = 50\" >> /etc/sysctl.conf"
echo "vm.vfs_cache_pressure = 50" >> /etc/sysctl.conf
echo "==="
sleep 1s
