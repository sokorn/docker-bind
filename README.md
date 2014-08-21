docker-bind
===========


This docker bind container can be used as a Authoritative Master DNS Server.
It is based on the `ubuntu:14.04` container.

Usage
-----

1. Clone this repo using
`git clone https://github.com/sokorn/docker-bind`

2. Place your zone files in `etc/`
3. Update `named.conf.local`
4. Build the docker container using `docker build -t $username/bind .`

to access the container in shell mode use
```
docker run -p 53:53 -p 53:53/udp -i -v `pwd`/etc:/etc/bind \
-t $username/bind /bin/bash
```

to start bind in the container use `startup &`

Hint: be careful with `` `pwd` ``, if you're not in the right location it will fail.

Assuming the git repo is in `/opt/docker-bind`, then run

```
docker run --name bind -p 53:53 -p 53:53/udp -d \
-v /opt/docker-bind/etc/:/etc/bind -t $username/bind
```

to start the container as deamon

to start/stop the container just use ´docker [start/stop] bind`

General
--------

It's distributed under the GPLv2 Licence, so feel free to fork me =)
Questions, improvements? Feel free to fill in an issue
