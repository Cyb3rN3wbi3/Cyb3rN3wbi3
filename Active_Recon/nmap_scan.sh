echo '################################################################################################'
echo '#                                       Nmap scanning                                          #'
echo '################################################################################################'

echo 'Enter IP address:  '
read ipaddress
echo 'Enter Port Number:  '
read port
echo 'Enter speed:  '
read speed
sudo nmap -sS -sV -A -p$port -$speed $ipaddress -oG nmap_scan.txt
