#!/bin/bash 
#mkdir -p dl/arc{1,2,3}

for i in {1..9}; do
	wget2 -q https://www.fictionpress.com/s/2961893/$i/Mother-of-Learning --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0" --load-cookies=/mnt/d/Files/Github/mol/bookify-mol/dl/cookies.txt --random-wait -O dl/arc1/00$i.html
	echo "Chapter $i" ; du -k dl/arc1/00$i.html | cut -f1 | awk '{print $1"kb downloaded"}' ; sleep 1
done

for i in {10..26}; do
	wget2 -q https://www.fictionpress.com/s/2961893/$i/Mother-of-Learning --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0" --load-cookies=/mnt/d/Files/Github/mol/bookify-mol/dl/cookies.txt --random-wait -O dl/arc1/0$i.html
	echo "Chapter $i" ; du -k dl/arc1/0$i.html | cut -f1 | awk '{print $1"kb downloaded"}' ; sleep 1
	echo $i ; sleep 1
done

for i in {27..54}; do
	wget2 -q https://www.fictionpress.com/s/2961893/$i/Mother-of-Learning --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0" --load-cookies=/mnt/d/Files/Github/mol/bookify-mol/dl/cookies.txt --random-wait -O dl/arc2/0$i.html
	echo "Chapter $i" ; du -k dl/arc2/0$i.html | cut -f1 | awk '{print $1"kb downloaded"}' ; sleep 1
	echo $i ; sleep 1
done

for i in {55..99}; do
	wget2 -q https://www.fictionpress.com/s/2961893/$i/Mother-of-Learning --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0" --load-cookies=/mnt/d/Files/Github/mol/bookify-mol/dl/cookies.txt --random-wait -O dl/arc3/0$i.html
	echo "Chapter $i" ; du -k dl/arc3/0$i.html | cut -f1 | awk '{print $1"kb downloaded"}' ; sleep 1
	echo $i ; sleep 1
done

for i in {100..108}; do
	wget2 -q https://www.fictionpress.com/s/2961893/$i/Mother-of-Learning --user-agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:96.0) Gecko/20100101 Firefox/96.0" --load-cookies=/mnt/d/Files/Github/mol/bookify-mol/dl/cookies.txt --random-wait -O dl/arc3/$i.html
	echo "Chapter $i" ; du -k dl/arc3/$i.html | cut -f1 | awk '{print $1"kb downloaded"}' ; sleep 1
	echo $i ; sleep 1
done


echo "Done!"
