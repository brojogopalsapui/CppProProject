FROM ubuntu:22.04

# Avoid tzdata asking for interactive input
ENV DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC

RUN apt-get update && apt-get install -y \
    g++ \
    cmake \
    make \
    tcl \
    git \
    libgtest-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /CppProProject

COPY . .

RUN cmake .
RUN make

CMD ["./sum"]

