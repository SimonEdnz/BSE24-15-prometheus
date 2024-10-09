FROM prom/prometheus:v2.54.0

COPY prometheus.yml /etc/prometheus/prometheus.yml

ARG TARGET_URL=https://bse24-15.onrender.com/metrics

EXPOSE 9090

ENTRYPOINT ["prometheus", "--config.file=/etc/prometheus/prometheus.yml", "--web.enable-lifecycle"]

