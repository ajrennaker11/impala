FROM docker.repository.cloudera.com/cdsw/engine:4
RUN curl -o /etc/apt/sources.list.d/cloudera.list http://archive.cloudera.com/kudu/ubuntu/xenial/amd64/kudu/cloudera.list
RUN echo "cdsw    ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers

RUN apg-get install libsasl
RUN wget https://downloads.cloudera.com/connectors/impala_odbc_2.6.0.1000/Debian/clouderaimpalaodbc_2.6.0.1000-2_amd64.deb
RUN apt install -y ./clouderaimpalaodbc_2.6.0.1000-2_amd64.deb
