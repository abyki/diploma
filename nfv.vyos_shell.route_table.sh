ip route add {{ external_sidr}} dev {{ eth }} scope link src {{ ip }} table {{ number }}
ip route add {{ metadata_server }} via {{ dhcp_ip }}  dev {{ item.eth }} table {{ item.number }}
ip route add {{ subcidr }}/{{ prefix }} dev eth1 scope link src {{ vyosaddr }} table {{ item.number }}
ip route add default via {{ external_gateway }} dev {{ item.eth }} table {{ item.number }}
ip rule add from {{ item.rule }} table {{ item.number }}
