FROM ubuntu:bionic

RUN apt-get update && apt-get install -y \
  apt-transport-https \
  ca-certificates curl \
  gnupg2 \
  software-properties-common

RUN curl -s https://api.bintray.com/users/bintray/keys/gpg/public.key | apt-key add -
RUN add-apt-repository 'deb https://dl.bintray.com/mull-project/ubuntu-18 stable main'

RUN curl -s https://apt.kitware.com/keys/kitware-archive-latest.asc | apt-key add -
RUN add-apt-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'

RUN apt-get update && apt-get install -y \
  clang-9 \
  cmake \
  git \
  mull \
  ninja-build

WORKDIR /source
