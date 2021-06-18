- set nat destination rule 10 destination address {{ CustomVM_ex_ip }}
- set nat destination rule 10 inbound-interface {{ eth }}
- set nat destination rule 10 translation address {{ CustomVM_ip }}

- set nat source rule 10 outbound-interface {{ eth }}
- set nat source rule 10 source address {{ CustomVM_ip }}
- set nat source rule 10 translation address {{ CustomVM_ex_ip }}
