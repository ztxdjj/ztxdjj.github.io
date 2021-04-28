#!/bin/bash
cd /root/snap2html/DiogenesList-master/
python3 /root/snap2html/DiogenesList-master/diogeneslist.py /root/jms/待整理 index
sed -i "s#\[LINK ROOT\]#https://ztxdjj.github.io/me#g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[LINK PROTOCOL\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\[SOURCE ROOT\]##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#\\\\\\\root\\\\\\\ikoa##g"  /root/snap2html/DiogenesList-master/index.html
sed -i "s#1>index#1>Gporn 色花盘#g" /root/snap2html/DiogenesList-master/index.html
sed -i "s#e>index#e>XXX#g" /root/snap2html/DiogenesList-master/index.html
cd /root/snapgit
git pull origin master
cp /root/snap2html/DiogenesList-master/index.html /root/snapgit/ikoa
git add .
git commit -m 'ikoa'
git push origin master
