echo '################################################################################################'
echo '#     Search for exploits that name you cant remeber by letterr starting the name              #'
echo '################################################################################################'

searchsploit afd windows -w -t

echo '################################################################################################'
echo '#                                          Trim the results                                    #'
echo '################################################################################################'

searchsploit afd windows -w -t | grep http | cut -f 2 -d "|"

echo '################################################################################################'
echo '#       Download raw code from the exploits using "sed"                                        #'
echo '################################################################################################'

# Bash script to search for a given exploit and downlnoad all matches.
for e in $(searchsploit afd windows -w -t | grep http | cut -f 2 -d "|")
do
exp_name=$(echo $e | cut -d "/" -f 5)
url=$(echo $e | sed 's/exploits/raw/')
wget -q --no-check-certificate $url -O $exp_name
done
