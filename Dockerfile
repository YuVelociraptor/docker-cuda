FROM nvidia/cuda:13.1.1-devel-ubuntu24.04

RUN apt-get update && apt-get install -y \
    build-essential \
    python3 \
    python3-pip \
    git \
    vim \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work

CMD ["/bin/bash"]