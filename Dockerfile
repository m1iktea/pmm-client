FROM percona/pmm-client:2.27.0
COPY exporter-noauth.sh /usr/local/percona/pmm2/
USER root
RUN bash -c /usr/local/percona/pmm2/exporter-noauth.sh && rm -f /usr/local/percona/pmm2/exporter-noauth.sh 
USER pmm-agent
