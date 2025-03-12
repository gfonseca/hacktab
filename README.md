# HACKTAB  

![i](https://raw.githubusercontent.com/gfonseca/hacktab/refs/heads/main/assets/logo.png)

This image is designed to be a Swiss Army knife loaded with tools for penetration testing and anonymity, all accessible from a browser tab. Just run the container:  

## How to Run  
```sh
$ docker run -d -p 7681:7681 gfonseca/hacktab
```  

Now, open your browser and go to **localhost:7681** and voilà! Your own Kali Linux-like terminal, running inside a browser tab.  

## Cloak Mode  
Cloak mode enables the Tor proxy, routing all traffic through a secure Tor tunnel. You can check the cloak mode status via icons: 🟢 (active) and 🔴 (inactive).  

### Enabling Cloak Mode 🟢  
```sh
$ cloak-start
```  
> **Note:** Always verify DNS leaks and confirm your external IP.  

### Disabling Cloak Mode 🔴  
```sh
$ cloak-stop
```  

## Available Tools  
*(This image is still in active development—new tools are being added gradually.)*  

- wireshark  
- hydra
- nmap
- tor  
- proxychains-NG  
- curl
- wget
- dig
- netstat
