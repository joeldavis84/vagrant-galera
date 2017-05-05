# Galera+HAProxy

Currently, this project only builds two load balance nodes and three clustered backend MariaDB database servers but eventually the two load balances will be configured to use `keepalived` to manage application VIP's. As it stands now, each load balance operates independently of one another.

This is just something I'm using to get a basic galera cluster going so I can test configuration changes to either a Galera cluster or load balancing thereof. Vagrant projects of DB-driven applications will probably be handled with a simpler vagrant configuration as this one eats a lot of CPU and memory.
