# Ethics Hacker
Keep the test scope phases organized.

# Hacking Simplified
Collecting Subdomains - | Amass | Subfinder | Assetfinder | Findomain

# Setting up DNSValidator and getting list of 50 resolvers aka 50resolvers.txt

git clone https://github.com/vortexau/dnsvalidator.git

cd dnsvalidator

python3 setup.py install

dnsvalidator -tL https://public-dns.info/nameservers.txt -threads 200 -o resolvers.txt

sort -R resolvers.txt | tail -n 50 > 50resolvers.txt

# Recon Phase Concept
domain="" 

resolvFile=""

findomain -t $domain

assetfinder $domain 

subfinder -nW -d $domain -rL $resolverFile -o subfinder_hackerone.txt

amass enum -passive -d $domain -src -dir h1_amass -o output_h1.txt -rf $resolverFile

screen -S nameScreen 




