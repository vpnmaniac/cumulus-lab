leaf01:
  asn: 4200501000
  vrf:
    list:
      - "public"
  svi:
    interfaces:
      vlan100:
        svi_type: "standard"
        vlan_id: 100
        vrf: "public"
        ip_addresses:
          - "185.2.136.241/28"
          - "2a02:2498:e004:4f::1/64"
      vlan4001:
        svi_type: "vxlan"
        vlan_id: 4001
        vrf: "public"
  bridge:
    bridge_ports:
      - "vni100"
      - "vxlan4001"
    bridge_vids:
      - 100
      - 4001
  vxlan:
    interfaces:
      vni100:
        vni_type: "l2"
        vlan_id: 100
        vxlan_id: 10100
        vrf: "public"
      vxlan4001:
        vni_type: "l3"
        vlan_id: 4001
        vxlan_id: 104001
        vrf: "public"
  lo:
    ipv4: "10.0.160.11"
  eth0:
    ipv4: "10.0.163.11/25"
    ipv4_gateway: "10.0.163.126"
  interfaces:
    swp1:
      description: "server01"
      port_type: "access"
      vlan_id: 100
    swp2:
      description: "server02"
      port_type: "access"
      vlan_id: 100
    swp49:
      description: "spine01"
      port_type: "uplink"
    swp50:
      description: "spine02"
      port_type: "uplink"
