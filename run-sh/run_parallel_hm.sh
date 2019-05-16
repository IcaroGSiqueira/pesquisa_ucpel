SERVERS="twins1,twins2"
parallel -j 4 --eta -S $SERVERS run_hm_server.sh :::