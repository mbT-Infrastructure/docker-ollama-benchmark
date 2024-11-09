FROM madebytimo/python

RUN pip install httpx ollama \
        https://github.com/cloudmercato/ollama-benchmark/archive/refs/heads/main.zip

COPY files/entrypoint.sh /usr/local/bin/

ENV SERVER_URL="http://host.containers.internal:11434"

USER user
WORKDIR /
ENTRYPOINT [ "entrypoint.sh" ]
CMD [ "speed" ]

LABEL org.opencontainers.image.licenses="MIT"
LABEL org.opencontainers.image.source="https://github.com/madebytimo/docker-ollama-benchmark"
