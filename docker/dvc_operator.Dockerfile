FROM python:3.6.7-slim

ENV PYTHONUNBUFFERED 1

RUN apt-get update --fix-missing --no-install-recommends && \
    apt-get upgrade -y && \
    apt-get install -y build-essential \
    python-dev git \
    libffi-dev libssl-dev libpq-dev \
    wget && \
    pip install -U --no-cache-dir pip setuptools wheel dvc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

COPY run_poodle.sh /run_poodle.sh

RUN mkdir /src && cd /src && \
	git clone https://github.com/yuxiangl/poodle-dvc.git && \
	cd /src/poodle-dvc && \
	git checkout dvc-operator && \
	pip install --no-cache-dir -r /src/poodle-dvc/requirements.txt

WORKDIR /

ENTRYPOINT ["bash", "/run_poodle.sh"]
