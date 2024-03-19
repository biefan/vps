#!/bin/bash

# TCP 缓冲区大小
sysctl -w net.core.rmem_default=262144
sysctl -w net.core.wmem_default=262144
sysctl -w net.core.rmem_max=16777216
sysctl -w net.core.wmem_max=16777216

# TCP Keepalive 参数
sysctl -w net.ipv4.tcp_keepalive_time=600
sysctl -w net.ipv4.tcp_keepalive_intvl=30
sysctl -w net.ipv4.tcp_keepalive_probes=3

# TCP SYN Cookie 参数
sysctl -w net.ipv4.tcp_syncookies=1

# TCP 超时时间
sysctl -w net.ipv4.tcp_fin_timeout=60

echo "优化连接参数完成！"
