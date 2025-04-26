FROM ubuntu:22.04

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

