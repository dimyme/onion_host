#!/bin/bash 
clear
mkdir                           ./0t
touch                           ./0t/hostname
echo tornettlb6vdlyyj.onion >>  ./0t/hostname

(
cat <<'EOFherefile'

-----BEGIN RSA PRIVATE KEY-----
MIICXgIBAAKBgQC9kOT2xnEv3d0NDlx198++QIHA13dXz6nzZCspd40Wdi+6Ry/C
RYgXCKe3P0hu4Jgh40BnVgFg5s7hzPC/dVBq8CwvL3R8gUCKjo5KEblkOy9XUXfC
xVxiW+lAFknSw1M0CvpwYfV+bLDmz3RX7R3hTjGVv7oqu3oc94u2E/0WJQIEDuWy
4wKBgCIfwIECNbiu7b9lTgZJiuoaYH4osUkCABTQXr1SocwXD4WSPakDX/4HVgAd
hN5rxMAvj7WfmJi3Q/SIiRLBsvqreao2r8C4OclARsrW+6FxJyhH8xKGgxN1rujM
SulMnjITGfLnYsfgi55IYP0YRD+CdKD5Rg7D5LPCSrSuA423AkEA51guR4+oDVX8
Vyg/buuH6NyrVvt3P4gQuz5sNglIFDK2TFxI2NGRzCuQDwzRL5lVsh4aiKydRgbk
IdnkTGKC0wJBANHE3PJ+ap9CfAM58ZdJReHdDf9T1JGgj6aFv+1xQF9POZfBGnMi
ANg7iiFndCv9fh5F5jy0skMRbWV/V54POCcCQEqZ/oPjal0gtL2CH8dXX65+5In8
KJD++pDozlXoX0gTPqZ6uOsPUHnWDIheL5K5UdshB4me+dYNsuTTWlSyb60CQQCL
6IoZ8/p0Lq0vzueMzqaQYDif+kdD+RhQHT6CgQ3M1jzhFory50JpzvbDR17VPWDl
A7eQbB5f7ANr/r9hf2GHAkEAwEYFsZUwGsZ3HwiTXefR+TwEZMlAsAKNuWLwNPsI
EZZV0t2zNX2ZHSlkerzqEuFgS1HLDmQIuCiwiKgt040KBA==
-----END RSA PRIVATE KEY-----

EOFherefile
) > ./0t/private_key


chmod  700 -R  ./0t
sudo                  cp    -r             ./0t     /
sudo                  chown -R $USER:$USER  /0t
chmod  700 -R   /0t


touch                                             torrc
echo 'HiddenServiceDir /0t/ '                 >>  torrc
echo 'HiddenServicePort 80 127.0.0.1:8080 '   >>  torrc




(
cat <<'EOFherefile'
<html>
  <head>
    <title>  A brand new onion  </title>
    <meta content="">
    <style></style>
  </head>
  <body> 
  <br>    
          http://tornettlb6vdlyyj.onion
  <br> <br>    
          a pretty cool onion...   
  <br> <br>    
                   this is to demo a real quick setup of an onion hidden web service. Usually, all you need to do is 
  <br> <br>    
                   * copy  torrc into the correct TBB (TorBrowserBundle) subdir, wich is in  torrc   =   ..... /tor-browser_en-US/Browser/TorBrowser/Data/Tor/      
  <br>    
                   * copy  .0t/   to   /0t/    as sudo, done above (remove #)
  <br>    
                   * forward TCP port 80 in your DSL router to tcp port 80 on the local machine, since you serve port 80 externally as  http://tornettlb6vdlyyj.onion:80 
  <br>    
                   * some routers are crap and it still wont work
  <br>    
                   * launch TBB
  <br>    
                   * run this bash console script
  <br>    
                   * browse in TBB to   http://tornettlb6vdlyyj.onion      and see this very page (usually, if nothing is broken or missing on ure machine)  , also wait like 1 minute then it should work in TBB
  <br> <br> <br>    

                   so now you have a real working onion in 1 minute, rather than all the outdated broken shit that google gives you which of course never works. 
                   web crap always breaks, except this one.
  <br>                   
                   place a favicon.ico picture file next to this very index.html to see in the bookmarks


        </body>
</html>

EOFherefile
) > ./index.html






echo "alrighty, now browse in TBB to   http://tornettlb6vdlyyj.onion "
python3 -m http.server --bind 127.0.0.1 8080
exit
###########################################################################  now browse in TBB to   http://tornettlb6vdlyyj.onion

 kioclient exec ..... /tor-browser_en-US/start-tor-browser.desktop 


bash hostpy.sh 
Serving HTTP on 127.0.0.1 port 8080 ...
127.0.0.1 - - [09/Sep/2018 21:29:26] "GET / HTTP/1.1" 200 -
127.0.0.1 - - [09/Sep/2018 21:43:12] "GET / HTTP/1.1" 200 -
127.0.0.1 - - [09/Sep/2018 21:43:13] code 404, message File not found
127.0.0.1 - - [09/Sep/2018 21:43:13] "GET /favicon.ico HTTP/1.1" 404 -
127.0.0.1 - - [09/Sep/2018 21:43:13] code 404, message File not found
127.0.0.1 - - [09/Sep/2018 21:43:13] "GET /favicon.ico HTTP/1.1" 404 -



 no 8080  just  80  tcp fwd




./eschalot -v -p tornett  >>  onionsOUT


Verbose, single result, no digits, 1 threads, prefixes 7-7 characters long.
Thread #1 started.
Running, collecting performance data...                                                                                                                                



Found a key for tornett (7) - tornettlb6vdlyyj.onion




----------------------------------------------------------------

tornettlb6vdlyyj.onion


-----BEGIN RSA PRIVATE KEY-----
MIICXgIBAAKBgQC9kOT2xnEv3d0NDlx198++QIHA13dXz6nzZCspd40Wdi+6Ry/C
RYgXCKe3P0hu4Jgh40BnVgFg5s7hzPC/dVBq8CwvL3R8gUCKjo5KEblkOy9XUXfC
xVxiW+lAFknSw1M0CvpwYfV+bLDmz3RX7R3hTjGVv7oqu3oc94u2E/0WJQIEDuWy
4wKBgCIfwIECNbiu7b9lTgZJiuoaYH4osUkCABTQXr1SocwXD4WSPakDX/4HVgAd
hN5rxMAvj7WfmJi3Q/SIiRLBsvqreao2r8C4OclARsrW+6FxJyhH8xKGgxN1rujM
SulMnjITGfLnYsfgi55IYP0YRD+CdKD5Rg7D5LPCSrSuA423AkEA51guR4+oDVX8
Vyg/buuH6NyrVvt3P4gQuz5sNglIFDK2TFxI2NGRzCuQDwzRL5lVsh4aiKydRgbk
IdnkTGKC0wJBANHE3PJ+ap9CfAM58ZdJReHdDf9T1JGgj6aFv+1xQF9POZfBGnMi
ANg7iiFndCv9fh5F5jy0skMRbWV/V54POCcCQEqZ/oPjal0gtL2CH8dXX65+5In8
KJD++pDozlXoX0gTPqZ6uOsPUHnWDIheL5K5UdshB4me+dYNsuTTWlSyb60CQQCL
6IoZ8/p0Lq0vzueMzqaQYDif+kdD+RhQHT6CgQ3M1jzhFory50JpzvbDR17VPWDl
A7eQbB5f7ANr/r9hf2GHAkEAwEYFsZUwGsZ3HwiTXefR+TwEZMlAsAKNuWLwNPsI
EZZV0t2zNX2ZHSlkerzqEuFgS1HLDmQIuCiwiKgt040KBA==
-----END RSA PRIVATE KEY-----

