SERVERS="twins1,twins2"
parallel -j 4 --eta -S $SERVERS run_vtm_server.sh :::