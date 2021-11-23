#!/bin/bash

while [[ "$#" -gt 0 ]]; do
    case $1 in
        -w|--wallet) wallet="$2"; shift ;;
        *) echo " -w is the only argeument: $1"; exit 1 ;;
    esac
    shift
done

# validate argument parsed value
if [ -z "$wallet" ]
then
      echo "enter flag -w and wallet name"
fi

# check if bitcoind daemon is running then kill it
kill_bitcoind_process () {
PID=`ps -eaf | grep bitcoind | grep -v grep | awk '{print $2}'`
if [[ "" !=  "$PID" ]]; then
  echo "killing $PID"
  kill -9 $PID
fi
}


start_bitcoind () {
 bitcoind -regtest
}

create_bitcoin_wallet(){
    bitcoin-cli -regtest createwallet $wallet
}


generate_regtest_block(){
    bitcoin-cli -regtest -generate 101
}



generate_bitcoin_new_address(){
    bitcoin-cli  -regtest getnewaddress
}


kill_bitcoind_process
start_bitcoind
sleep 2
create_bitcoin_wallet
sleep 2
generate_regtest_block
sleep 1
generate_bitcoin_new_address

