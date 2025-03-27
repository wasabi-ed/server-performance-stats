# Server Stats Script (`server-stats.sh`)

## 📖 Overview
`server-stats.sh` is a simple Bash script that collects and displays key server performance metrics.  
It provides details on **CPU usage, memory usage, disk usage, and top processes**, making it useful for system monitoring.

## 🔥 Features
- ✅ **CPU Usage** – Shows total CPU utilization.
- ✅ **Memory Usage** – Displays used, free, and percentage usage.
- ✅ **Disk Usage** – Reports disk space usage with percentage.
- ✅ **Top Processes** – Lists top 5 processes by CPU and memory.
- ✅ **(Optional)**: OS version, uptime, logged-in users, and failed login attempts.

## 🛠️ Prerequisites
- 🐧 **Linux OS** (Tested on Ubuntu, may work on other distros)
- `bash` (Recommended over `zsh`)
- Standard system tools: `top`, `ps`, `df`, `awk`, `grep`, `uptime`
- (Optional) SSH access to check failed login attempts

## 🚀 Installation & Usage

1. **Clone the Repository**  
   ```bash
   git clone https://github.com/yourusername/server-stats.git
   cd server-stats
2. **Make the script executable**
   ```bash
   chmod +x server-stats.sh

3. **Run the script**
   ```bash
   ./server-stats.sh

**https://roadmap.sh/projects/server-stats**
