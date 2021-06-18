ip route add {{ external_sidr}} dev {{ eth }} scope link src {{ CustomVM_ex_ip }} table {{ number }}
ip route add {{ metadata_server }} via {{ dhcp_ip }}  dev {{ eth }} table {{ number }}
ip route add {{ internal_sidr }}/{{ internal_prefix }} dev eth1 scope link src {{ vyosaddr }} table {{ number }}
ip route add default via {{ external_gateway }} dev {{ eth }} table {{ number }}
ip rule add from {{ CustomVM_ip }} table {{ number }}
