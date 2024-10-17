echo "--------------------------------------------------"
echo "-------- System health monitoring system ---------"
echo "--------------------------------------------------"

# Prints the current date and time on the terminal.
echo -e "\nCurrent Date and Time: $(date)"

echo -e "\n--------------------------------------------------"
# Prints the system uptime.
echo -e "\nCurrent Uptime: $(uptime -p)"

echo -e "\n--------------------------------------------------"
# Prints the current Linux version.
echo -e "\nCurrent Linux kernal version: $(uname -r)"

echo -e "\n--------------------------------------------------"
# Prints the details about the current version of Linux.
echo -e "\nDetails about the current linux version: \n$(lsb_release -a)"

echo -e "\n--------------------------------------------------"
# Prints all users currently logged in.
echo -e "\nCurrent Users: $(who)"

echo -e "\n--------------------------------------------------"
# Prints all the updates available
echo -e "\nCurrent updates available: $(sudo apt update)"

echo -e "\n--------------------------------------------------"
# Prints the u firewall status
echo -e "\nUncomplicated firewall Status:"
sudo ufw status

echo -e "\n--------------------------------------------------"
# Prints the network routing table.
netstat -r

echo -e "\n--------------------------------------------------"
# Lists all listening ports with the associated service.
echo -e "\nAll listening ports with the associated service: "
sudo netstat -tulnp

echo -e "\n--------------------------------------------------"
# Shows active system services.
echo -e "\nShowing all the active system services:"
service --status-all

echo -e "\n--------------------------------------------------"
# Retrieves the most recent system logs
echo -e "\nRetrieving the most recent system logs:"
dmesg | tail -n 20

echo -e "\n--------------------------------------------------"
# Lists all network interfaces and their status.
echo -e "\nListing all netwrok interfaces:"
ifconfig

echo -e "\n--------------------------------------------------"
# Displays the last logins and reboots.
echo -e "\nDisplaying the last logins and reboots:"
last

echo -e "\n--------------------------------------------------"
# Displays the hierarchy of running processes in a tree format.
echo -e "\nDisplaying the hierarchy of running processes in a tree format:"
pstree

echo -e "\n--------------------------------------------------"
# Prints the disk space usage in human readable form.
echo -e "\n Disk Space Usage:"
df -h

echo -e "\n--------------------------------------------------"
# Prints the PID, Command and %CPU usage
echo -e "\n Top 10 processes consuming CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 11

echo -e "\n--------------------------------------------------"
# Prints the top 10 processes using RAM
echo -e "\n Top 10 processes consuming Memory:"
ps -eo pid,user,%mem,comm --sort=-%mem | head -n 11

echo -e "\n--------------------------------------------------"
# Prints 10 seperate pings to google.com
echo -e "\n Checking internet connectivity (Pinging Google)"
ping -c 11 google.com

echo -e "\n--------------------------------------------------"
echo -e "\n Network Interface Information:"
ifconfig | grep -E 'inet | eth | wlan'

echo "-------------------------------------------------------"
echo "-------- System health checkup was successful ---------"
echo "-------------------------------------------------------"
