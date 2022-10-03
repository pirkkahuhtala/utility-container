FROM ubuntu

# Updates
RUN apt-get update -y && \

sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
apt-get update -y && \
apt-get install -y postgresql-client-13

CMD ['/bin/bash', '-c', "while true; do sleep 30; done;"]
