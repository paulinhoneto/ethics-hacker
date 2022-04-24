# Ethics Hacker
Keep the test scope phases organized.

# Hacking Simplified
Collecting Subdomains - | Amass | Subfinder | Assetfinder | Findomain

# Recon Phase Concept

domain="" 

resolvFile=""

findomain -t $domain

assetfinder $domain 

subfinder -nW -d $domain -rL $resolverFile -o subfinder_hackerone.txt

amass enum -passive -d $domain -src -dir h1_amass -o output_h1.txt -rf $resolverFile

screen -S nameScreen 




