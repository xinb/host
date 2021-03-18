./server/xray -config ./server/server.json > server.file 2>&1 &
./client/xray -config ./client/client.json > client.file 2>&1 &
iperf3 -siperf3 -s > iperf3_server.file 2>&1 &
proxychains  iperf3 -c 127.0.0.1 -t 10 > iperf3_client.txt 2>&1 &