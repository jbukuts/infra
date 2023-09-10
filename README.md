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

First start by install any required roles or collections via:

```sh
ansible-galaxy install -r requirements.yml
```


A quick overview of the steps taken to initialize my home server is this

1. Initial system configuration
    - SSH settings
       - No password auth allowed
       - Copy key file
    - Passwordless sudo for my user
2. Building RAID arrays
    - I've written two roles for this. One using `zfs` and the other `mdadm`. 

    - The arrays aren't too complicated and are built via `mdadm`. No fancy caching or additional parity. 
    - They can be specified via some variables as to which drives are in what arrays, their mount points, and RAID level.
       - more in depth explanation [here]()
    - I've catered this role to work on Ubuntu (Debian) systems primarily given that's my use case.
3. Install and configure Docker containers
    - The installation itself is handled via [geerlingguy's role]()
    - The containers I provision are:
        - Portainer Community Edition
        - Plex
        - PiHole
        - Transmission
    - I choose to use strict versions for my containers to not introduce breaking changes by accident
4. Configure NAS capabilities via Samba 

## Shout outs

I'm no ansible expert so I'll link the various sources I pulled from to get this working:

