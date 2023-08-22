# Home Server Ansible Config

Contained in this repo is the Ansible configuration I defined for use on my home server. 

Server Info:

```txt
MOBO: Asus Z10PA-D8 
CPU: 2 x Intel E5 Xeon 2683 v4
RAM: 128 GB 2400Mhz DDR4 ECC
OS: 22.04 Ubuntu Home
```

## Steps

A quick overview of the steps taken to initialize my home server is this

1. Initial system configuration
    - SSH settings
2. Building RAID arrays
    - The arrays aren't too complicated and are built via `mdadm`. No fancy caching or additional parity. 
    - They can be specified via some variables as to which drives are in what arrays, their mount points, and RAID level
3. Install and configure Docker containers
    - The installation itself is handled via [geerlingguy's role]()
    - With the containers I provision being:
        - Plex
        - PiHole
        - Transmission
    - I choose to use strict versions so as to not introduce breaking changes by accident
4. Configure NAS capabilities via Samba 

## Layout# infra
