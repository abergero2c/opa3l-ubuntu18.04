FROM ubuntu:18.04
RUN apt update && \
 apt install -y rpm2cpio cpio wget gfortran gcc ragel libssl-dev make cmake g++ git autogen \
	pkg-config valgrind libboost-all-dev language-pack-en-base libboost-python-dev python3-dev \
	libsuperlu-dev libopenblas-dev sshpass zlib1g-dev\
	clang-tidy clang libboost-all-dev wget valgrind python-yaml \
 && rm -rf /var/lib/apt/lists/* && \
 apt-get install build-essential && apt-get install libfontconfig1 && apt-get install mesa-common-dev && \
 apt-get install libglu1-mesa-dev -y && \
 wget http://download.qt.io/official_releases/qt/5.13/5.13.1/qt-opensource-linux-x64-5.13.1.run && \
 chmod +x qt-opensource-linux-x64-5.13.1.run && \
 ./qt-opensource-linux-x64-5.13.1.run
ENV LANG en_US.utf-8
