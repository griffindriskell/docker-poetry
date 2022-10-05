FROM debian:11.5-slim as base

FROM base as builder

RUN apt update && apt install -y python3 python3-pip curl
RUN curl -sSL https://install.python-poetry.org | POETRY_HOME=/opt/poetry python3 -

FROM base

COPY --from=builder /opt /opt

ENTRYPOINT ["/opt/poetry/bin/poetry"]

# docker build -t poetry .
