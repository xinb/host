apt install iperf3
apt install proxychains 
apt install cpulimit
wget https://raw.githubusercontent.com/xinb/host/main/proxychains.conf
cp ./proxychains.conf /etc/proxychains.conf
./server/xray -config ./server/server.json > server.file 2>&1 &
./client/xray -config ./client/client.json > client.file 2>&1 &
iperf3 -siperf3 -s > test_iperf3_server.file 2>&1 &
proxychains  iperf3 -c 127.0.0.1 -t 10 > test_iperf3_client.txt 2>&1 &