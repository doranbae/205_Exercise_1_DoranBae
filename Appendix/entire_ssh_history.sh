#log-in with .pem file
"thisKeyPair2.pem" root@54.152.250.122

#in order to create hive tables right, i gave 777 permission to /data folder and /tmp folder
chmod 777 /tmp
chmod 777 /data
sudo -u hdfs hadoop fs -chmod 777 /tmp
sudo -u hdfs hadoop fs -chmod 777 /data
sudo -u hdfs hadoop fs -chmod 777 /data/*

#make a folder hospitcal compare --> later, i ended up using a folder at a different location. because I couldn't locate this folder
sudo -u hdfs hdfs dfs -mkdir -p /user/w205/hospitalcompare

#all my files + data is stored under /data/w205/hospitalcare  

cd data
cd w205
mkdir hospitalcare

#moved all csv files from /usr to /data/w205/hospitcalcare
mv "effective_care.csv" /data/w205/hospitalcare
mv "hospitals.csv" /data/w205/hospitalcare
mv "surveys_responses.csv" /data/w205/hospitalcare

#i created ddl file within /root
vi hive_base_ddl.sql
hive -f ./hive_bash_ddl.sql

