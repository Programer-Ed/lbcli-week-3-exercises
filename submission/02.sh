# Create a native segwit address and get the public key from the address.

ADDRESS=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress "" "bech32")
# echo $ADDRESS

PUBKEY=$(bitcoin-cli -regtest -rpcwallet=builderswallet getaddressinfo $ADDRESS | jq -r .pubkey)
echo $PUBKEY