
# This bash script automate some bitcoin-cli process to get started with bitcoin regtest which includes.

- starting of  bitcoind regtest daemon
-  create bitcoin wallet on regtest
- generate testing block for regtest
- generate another new bitcoin wallet




## HOW TO USE
 - run the bash script on your terminal
```bash

# wallet name is required so use -w or --wallet <name_of_wallet>
@arg -w or --wallet wallet 


bash bitcoin-regtest.sh -regtest.sh -w hello_wallet
bash bitcoin-regtest.sh -regtest.sh --wallet hello_wallet

or

chmod -x bitcoin-regtest.sh
./bitcoin-regtest.sh -w hello_wallet or --wallet hello_wallet


```