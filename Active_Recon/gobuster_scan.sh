echo '################################################################################################'
echo '#                                       Gobuster scanning                                      #'
echo '################################################################################################'

echo 'Enter URL:  '
read url
echo 'Enter port:  '
read port
echo 'Enter wordlist  '
read wordlist


sudo gobuster dir -u  $url:$port -w $wordlist 
