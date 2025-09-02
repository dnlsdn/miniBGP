# Topology

```
graph LR
  subgraph AS65001 [AS65001]
    R1[r1 10.10.1.1]
    H1[h1 10.10.1.100]
  end

  subgraph AS65002 [AS65002]
    R2[r2 10.10.2.1]
    H2[h2 10.10.2.100]
  end

  R1 ---|10.10.12.1/30| R2
  H1 -->|LAN| R1
  H2 -->|LAN| R2
```
