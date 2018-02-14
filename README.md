tinc is a P2P VPN network. Read http://tinc-vpn.org for details

# Init and start the main node, should have public ip:

```bash
./tinc init main
./tinc add Subnet 10.10.0.1/32
./tinc start 10.10.0.1/16
```


# Invite node

On the main node

```bash
./tinc invite node1
server:655/ds45-fsdfsdrd6
```


Copy url and use it on the new node

```bash
./tinc join server:655/ds45-fsdfsdrd6 # init node
./tinc add Subnet 10.10.0.2/32 # add tinc internal routing
./tinc start 10.10.0.2/16 # start tinc and configure network interface
ping 10.10.0.1 # check access to main node
```


