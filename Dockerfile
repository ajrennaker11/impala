FROM docker.repository.cloudera.com/cdsw/engine:4
RUN echo "cdsw    ALL=(ALL:ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN apt-get install -y sudo

RUN wget https://downloads.cloudera.com/connectors/impala_odbc_2.6.0.1000/Debian/clouderaimpalaodbc_2.6.0.1000-2_amd64.deb
RUN apt install -y ./clouderaimpalaodbc_2.6.0.1000-2_amd64.deb
