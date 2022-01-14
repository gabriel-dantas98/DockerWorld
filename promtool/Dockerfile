# FROM python:3.7-alpine
FROM deepmind/kapitan

ENV PROM_VERSION "2.20.1"
ENV BIN_DIR "/usr/bin"
ENV KAPITAN_VERSION "v0.28.0"
ENV KAPITAN_BIN_NAME "kapitan"
ENV PROMETHEUS_FILE "prometheus.tar.gz"

USER root

RUN apt update && apt install --no-install-recommends -y curl && pip install yq 

# RUN curl -sL "https://github.com/deepmind/kapitan/releases/download/${KAPITAN_VERSION}/kapitan-linux-amd64" -o "${BIN_DIR}/${KAPITAN_BIN_NAME}" && \
#     chmod +x "${BIN_DIR}/${KAPITAN_BIN_NAME}" 
 
RUN curl -sL "https://github.com/prometheus/prometheus/releases/download/v${PROM_VERSION}/prometheus-${PROM_VERSION}.linux-amd64.tar.gz" -o ${PROMETHEUS_FILE} && \
    tar -xvzf ${PROMETHEUS_FILE}  && \
    mv prometheus-${PROM_VERSION}.linux-amd64/promtool ${BIN_DIR} 

ENTRYPOINT [ "promtool" ]
