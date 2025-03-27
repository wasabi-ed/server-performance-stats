#!/bin/bash

echo "===== Server Performance Stats ====="

# CPU Usage
echo -e "\n** CPU Usage **"
top -bn1 | grep "Cpu(s)" | awk '{print "Usage: " $2 + $4 "%"}'

# Memory Usage
echo -e "\n** Memory Usage **"
free -m | awk 'NR==2{printf "Used: %s MB, Free: %s MB (%.2f%%)\n", $3, $4, $3*100/$2}'

# Disk Usage
echo -e "\n** Disk Usage **"
df -h --total | awk 'END{print "Used: " $3 ", Free: " $4 " (" $5 " used)"}'

# Top 5 Processes by CPU Usage
echo -e "\n** Top 5 Processes by CPU Usage **"
ps -eo pid,comm,%cpu --sort=-%cpu | head -6

# Top 5 Processes by Memory Usage
echo -e "\n** Top 5 Processes by Memory Usage **"
ps -eo pid,comm,%mem --sort=-%mem | head -6

# Optional Stretch Goals
echo -e "\n===== Additional Info ====="

# OS Version
echo -e "\n** OS Version **"
lsb_release -d 2>/dev/null || cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2

# Uptime
echo -e "\n** Uptime **"
uptime -p

# Load Average
echo -e "\n** Load Average **"
cat /proc/loadavg

# Logged-in Users
echo -e "\n** Logged-in Users **"
who

# Failed Login Attempts (last 10)
echo -e "\n** Failed Login Attempts (Last 10) **"
sudo journalctl _SYSTEMD_UNIT=sshd.service | grep "Failed password" | tail -10

