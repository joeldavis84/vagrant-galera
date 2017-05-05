# Galera+HAProxy+Keepalived

If the cluster comes up properly you should have a privileged MySQL user called `testuser` with a password of `testpass`

This is just something I'm using to get a basic galera cluster going so I can test configuration changes to either a Galera cluster or load balancing thereof. Vagrant projects of DB-driven applications will probably be handled with a simpler vagrant configuration as this one eats a lot of CPU and memory.

If anyone has any suggestions, feel free to let me know. The goal is to keep this generally useful for "I just need a MySQL cluster" sorts of needs. For example, there are no firewalls because it's just another possible roadblock and this is intended for a "build, test, teardown" workflow. 

## Components

- MariaDB 10.1 (using native galera clustering)
- HAProxy for load balancing between nodes
- Keepalived for VIP management.

## IP layout 

IP addresses are as follows:

- 192.168.121.100 :: Frontend VIP for the Galera Cluster
- 192.168.121.51 :: First load balance node (lb01)
- 192.168.121.52 :: Second load balance node (lb02)
- 192.168.121.41 :: First database node (db01)
- 192.168.121.42 :: Second database node (db02)
- 192.168.121.43 :: Third database node (db03)

## Ideas For The Future

Pretty much done but some ideas on what I could change:

- Code organization in the Vagrantfile is a bit hectic and could be made easier to read
- The load balancer should expose an TLS port as well as the member nodes
- Secure stats from HAproxy wouldn't be too bad of an idea
- The initial connection to a load balance seems to drag on longer than I think it should. I should investigate how to cut down that time.
