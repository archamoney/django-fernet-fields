# Test runner image: every interpreter from the tox envlist in one place.
# CI (.github/workflows/test.yml) fans the matrix out over one runner per Python
# version; locally we want a single `task test`, so this image carries them all.
# The deadsnakes PPA keeps the build to a couple of minutes -- no CPython builds.
FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive \
    PIP_DISABLE_PIP_VERSION_CHECK=1 \
    PYTHONUNBUFFERED=1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        ca-certificates curl gnupg software-properties-common \
    && add-apt-repository -y ppa:deadsnakes/ppa \
    && apt-get update \
    && apt-get install -y --no-install-recommends \
        build-essential \
        libssl-dev libffi-dev zlib1g-dev libbz2-dev liblzma-dev \
        libreadline-dev libsqlite3-dev libxml2-dev libxmlsec1-dev \
        libpq-dev postgresql-client \
        python3.8  python3.8-dev  python3.8-venv  python3.8-distutils \
        python3.9  python3.9-dev  python3.9-venv  python3.9-distutils \
        python3.10 python3.10-dev python3.10-venv python3.10-distutils \
        python3.11 python3.11-dev python3.11-venv python3.11-distutils \
        python3.12 python3.12-dev python3.12-venv \
        python3.13 python3.13-dev python3.13-venv \
    && rm -rf /var/lib/apt/lists/*

# tox itself lives in its own venv so it never mixes with the tested envs.
# coverage is here too, so `task coverage` can combine the matrix results.
RUN python3.12 -m venv /opt/tox \
    && /opt/tox/bin/pip install --upgrade pip setuptools wheel \
    && /opt/tox/bin/pip install tox coverage

ENV PATH="/opt/tox/bin:${PATH}"

WORKDIR /app

CMD ["tox"]
