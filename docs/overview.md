# Mini-BGP — Project Overview

Goal: build a small multi-AS topology using FRRouting (FRR) to learn BGP by doing.

Topology summary:
- AS65001: r1 with LAN 10.10.1.0/24 (r1: 10.10.1.1)
- AS65002: r2 with LAN 10.10.2.0/24 (r2: 10.10.2.1)
- Point-to-point link r1-r2: 10.10.12.0/30 (r1: .1, r2: .2)
- Test hosts: h1 (10.10.1.100), h2 (10.10.2.100)

This step brings up routers and hosts with IP connectivity on directly connected links. No BGP yet.
