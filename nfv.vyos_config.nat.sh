- set nat destination rule 10 destination address {{ osport_ex_vm0 }}
- set nat destination rule 10 inbound-interface {{ eth }}
- set nat destination rule 10 translation address {{ osport_vm0 }}

- set nat source rule 10 outbound-interface {{ eth }}
- set nat source rule 10 source address {{ osport_vm0 }}
- set nat source rule 10 translation address {{ osport_ex_vm0 }}
