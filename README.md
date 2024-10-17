# System Health Monitoring Script

This is a basic Linux shell script designed to monitor the health of a system. It provides a real-time snapshot of key system metrics such as disk space, memory usage, CPU load, running processes, network connectivity, and more.

## Features

The script performs the following checks:

1. **Current Date and Time**: Displays the system's current date and time.
2. **System Uptime**: Shows how long the system has been running in a human-readable format.
3. **Linux Kernel Version**: Prints the current Linux kernel version.
4. **Distribution Details**: Provides information about the current Linux distribution (e.g., Ubuntu version).
5. **Current Logged-in Users**: Lists all users currently logged into the system.
6. **Available Updates**: Checks for package updates using `apt`.
7. **Firewall Status**: Retrieves the current status of the Uncomplicated Firewall (`ufw`).
8. **Network Routing Table**: Displays the system’s network routing table.
9. **Listening Ports**: Lists all open listening ports along with their associated services.
10. **Active System Services**: Displays the status of all active system services.
11. **System Logs**: Retrieves the last 20 lines from the system logs.
12. **Network Interfaces**: Lists all network interfaces and their status.
13. **Last Logins and Reboots**: Shows the history of logins and system reboots.
14. **Process Hierarchy**: Displays running processes in a tree format.
15. **Disk Space Usage**: Reports disk usage in human-readable format.
16. **Top CPU Processes**: Lists the top 10 processes by CPU usage.
17. **Top Memory Processes**: Lists the top 10 processes by memory usage.
18. **Network Connectivity**: Sends 10 pings to `google.com` to check for internet connectivity.
19. **Network Interface Info**: Displays key information about the network interfaces, including IP addresses.

## Requirements

- Ubuntu (or any other Linux distribution that supports the required commands).
- `sudo` privileges to run some commands.
- WSL 2 (if running on Windows) or a native Linux environment.

### Prerequisite Tools
Make sure the following tools are installed:
- `ufw`: For firewall status
- `net-tools`: For network commands like `netstat` and `ifconfig`
- `lsb_release`: To display Linux distribution information
- `ping`, `dmesg`, `ps`, `df`, `top`, and other basic Linux utilities.

You can install any missing packages using:
    ```
    sudo apt update
    sudo apt install net-tools ufw lsb-release sysstat
    ```

# Usage
1. Make the script executable:
```
chmod +x health_monitor.sh
```
2. Run the script:
```
sudo ./health_monitor.sh
```
3. The script will print out various system metrics to the terminal, offering a snapshot of the system's current health.

Example Output
--------------------------------------------------
-------- System health monitoring system ---------
--------------------------------------------------

Current Date and Time: Sun Oct 17 14:25:46 UTC 2024
--------------------------------------------------

Current Uptime: up 1 hour, 45 minutes
--------------------------------------------------

Current Linux Kernel Version: 5.10.60.1-microsoft-standard-WSL2
--------------------------------------------------

...
-------- System health checkup was successful ---------
-------------------------------------------------------

Notes
The script includes several commands that require elevated privileges (sudo), so you'll be prompted for your password when necessary.
Disclaimer: Running this script frequently is not recommended for production systems, as certain commands (e.g., apt update or frequent disk checks) may consume system resources.
License
This project is open-source and can be modified and distributed freely.

```
You can copy and paste this directly into your `README.md` file.
```
