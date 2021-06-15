FROM python:3

#Install the latest scapy and the crypto libaries
RUN pip install --pre scapy[basic]
RUN pip install cryptography

#Install the older version of pyroute2
RUN git clone https://github.com/plorinquer/pyroute2.git
WORKDIR /pyroute2
RUN make install

#Clone the fixed version of Radius-Audit
WORKDIR /
RUN git clone https://github.com/yaap7/radius-audit.git
