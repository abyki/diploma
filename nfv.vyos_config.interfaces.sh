- set interfaces ethernet eth1 address "{{ vyosaddr }}/{{ prefix }}"
- set interfaces ethernet eth2 address "{{ osport_ex_vm0 }}/{{ external_prefix }}"
- set interfaces ethernet eth3 address "{{ osport_ex_vm1 }}/{{ external_prefix }}"

- set interfaces ethernet eth1 firewall in name 'LAN-IN'
- set interfaces ethernet eth1 firewall out name 'LAN-OUT'
