bash ./server/xray -config ./server/server.json > p server.file 2>&1 &
bash ./client/xray -config ./client/client.json > p client.file 2>&1 &
iperf3 -siperf3 -s > p iperf3_server.file 2>&1 &
proxychains  iperf3 -c 127.0.0.1 -t 10 > p iperf3_client.file 2>&1 &