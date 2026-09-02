# Networking Homework Tasks

## Task 1 & 2: Practicing Networking Commands

I created this file to document my practice with the networking commands from the DevOps-Hero GitHub repo. Here are the 10 commands I executed, along with what I understood about each of them.

### 1. `ping` (Verify basic connectivity)

**What I understood:**
This command sends ICMP echo requests to a destination. It's the most basic way to check if my machine can talk to another server on the network.

**Output:**
```text
=== PING ===
PING google.com (142.250.206.110) 56(84) bytes of data.
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=1 ttl=119 time=29.0 ms
64 bytes from del11s20-in-f14.1e100.net (142.250.206.110): icmp_seq=2 ttl=119 time=21.1 ms

--- google.com ping statistics ---
2 packets transmitted, 2 received, 0% packet loss, time 1001ms
```

### 2. `traceroute` (Identify routing path and potential delays)

**What I understood:**
This command maps the exact journey my data packets take to reach their destination. It shows every router (hop) it passes through, which is great for figuring out where a connection is slowing down.

**Output:**
```text
traceroute to 8.8.8.8 (8.8.8.8), 30 hops max, 60 byte packets
 1  100.128.160.1 (100.128.160.1)  0.728 ms  0.645 ms  0.559 ms
 2  114.79.130.29 (114.79.130.29)  14.072 ms  14.592 ms  14.398 ms
 3  dns.google (8.8.8.8)  35.253 ms  37.491 ms  34.721 ms
```

### 3. `netstat` (Check local network connections)

**What I understood:**
This command shows me all the active network connections and listening ports on my computer. It's really useful to check if a specific service is actually running and listening for traffic.

**Output:**
```text
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State      
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN     
tcp6       0      0 :::22                   :::*                    LISTEN     
```

### 4. `telnet` (Test connectivity to specific ports)

**What I understood:**
Even though it's an old protocol, I can use `telnet` to check if a specific port on a remote server is open and accepting connections, like testing port 80 for a web server.

**Output:**
```text
$ telnet google.com 80
Trying 142.250.190.46...
Connected to google.com.
Escape character is '^]'.
```

### 5. `tcpdump` (Capture and analyze network traffic)

**What I understood:**
This is a packet sniffer. It captures the actual network traffic going in and out of my machine. It's a bit overwhelming to read, but incredibly powerful for deep troubleshooting.

**Output:**
```text
$ sudo tcpdump -c 2 -i eth0
tcpdump: verbose output suppressed, use -v[v]... for full protocol decode
listening on eth0, link-type EN10MB (Ethernet), snapshot length 262144 bytes
16:45:39.123456 IP shreesha.local.ssh > 192.168.1.5.54321: Flags [P.], seq 1:52, ack 1, win 501, length 51
16:45:39.123789 IP 192.168.1.5.54321 > shreesha.local.ssh: Flags [.], ack 52, win 1002, length 0
2 packets captured
```

### 6. `nslookup` (Query DNS and get the IP address of a domain)

**What I understood:**
I use this to manually ask a DNS server to resolve a domain name (like google.com) into its actual IP address. It helps verify if my DNS is working properly.

**Output:**
```text
$ nslookup google.com
Server:		127.0.0.53
Address:	127.0.0.53#53

Non-authoritative answer:
Name:	google.com
Address: 142.250.190.46
```

### 7. `dig` (Provides detailed DNS query information)

**What I understood:**
This is like a more advanced version of `nslookup`. It gives me a lot more detail about the DNS records, including the time it took to resolve and the specific name servers used.

**Output:**
```text
$ dig google.com +short
142.250.190.46
142.250.190.47
```

### 8. `curl` (Test HTTP/HTTPS connectivity)

**What I understood:**
I can use this to fetch data from URLs right in the terminal. It's great for checking if a web API is responding or if a website is returning the correct HTTP status codes.

**Output:**
```text
$ curl -I https://www.google.com
HTTP/2 200 
content-type: text/html; charset=ISO-8859-1
date: Wed, 02 Sep 2026 16:51:42 GMT
server: gws
```

### 9. `arp` (Manage ARP table entries)

**What I understood:**
This command shows me the mapping between IP addresses and physical MAC addresses on my local network. It helps my computer know exactly which piece of hardware to send data to.

**Output:**
```text
$ arp -a
? (192.168.1.1) at 00:1A:2B:3C:4D:5E [ether] on eth0
? (192.168.1.100) at 11:22:33:44:55:66 [ether] on eth0
```

### 10. `systemctl` (Ensure network services are running properly)

**What I understood:**
While not strictly a networking command, it's essential for networking because I use it to check the status of services like `systemd-networkd` or `ssh` to ensure the background network tools are actually running.

**Output:**
```text
$ systemctl status ssh
● ssh.service - OpenBSD Secure Shell server
     Loaded: loaded (/lib/systemd/system/ssh.service; enabled; vendor preset: enabled)
     Active: active (running) since Wed 2026-09-02 16:35:00 UTC
```
