tinc is a P2P VPN network. Read http://tinc-vpn.org for details

# Init and start the main node, should have public ip:

```bash
./tinc init main
./tinc start
sudo ip addr add 10.10.0.1/16 dev testnet
```


# Invite node

On the main node

```bash
./tinc invite node1
server:655/ds45-fsdfsdrd6
```


Copy url and use it on the new node

```bash
./tinc join server:655/ds45-fsdfsdrd6
./tinc start
sudo ip addr add 10.10.0.2/16 dev testnet
ping 10.10.0.1
```


