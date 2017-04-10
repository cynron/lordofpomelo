FROM hub.c.163.com/library/debian:jessie
RUN apt-get update && apt-get install -y build-essential python wget git sysstat && \
    cd /root && wget https://nodejs.org/download/release/v0.10.48/node-v0.10.48-linux-x64.tar.gz && tar xzvf node-v0.10.48-linux-x64.tar.gz  && \
    git clone https://github.com/cynron/lordofpomelo.git
RUN /root/node-v0.10.48-linux-x64/bin/npm config set user 0 &&  /root/node-v0.10.48-linux-x64/bin/npm config set unsafe-perm true
RUN cd /root/lordofpomelo/game-server && /root/node-v0.10.48-linux-x64/bin/npm install && cd /root/lordofpomelo/web-server && /root/node-v0.10.48-linux-x64/bin/npm install && mkdir /root/lordofpomelo/game-server/logs
