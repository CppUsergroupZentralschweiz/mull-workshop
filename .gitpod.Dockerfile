FROM buildpack-deps:bionic

RUN apt-get update && apt-get install -yq \
  apt-transport-https \
  ca-certificates curl \
  gnupg2 \
  software-properties-common \
  sudo \
  vim


### Gitpod user ###
# '-l': see https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#user
RUN useradd -l -u 33333 -G sudo -md /home/gitpod -s /bin/bash -p gitpod gitpod \
    # passwordless sudo for users in the 'sudo' group
    && sed -i.bkp -e 's/%sudo\s\+ALL=(ALL\(:ALL\)\?)\s\+ALL/%sudo ALL=NOPASSWD:ALL/g' /etc/sudoers
ENV HOME=/home/gitpod
WORKDIR $HOME
# custom Bash prompt
RUN { echo && echo "PS1='\[\e]0;\u \w\a\]\[\033[01;32m\]\u\[\033[00m\] \[\033[01;34m\]\w\[\033[00m\] \\\$ '" ; } >> .bashrc


USER gitpod

RUN curl -s https://api.bintray.com/users/bintray/keys/gpg/public.key | sudo apt-key add -
RUN sudo add-apt-repository 'deb https://dl.bintray.com/mull-project/ubuntu-18 stable main'

RUN curl -s https://apt.kitware.com/keys/kitware-archive-latest.asc | sudo apt-key add -
RUN sudo add-apt-repository 'deb https://apt.kitware.com/ubuntu/ bionic main'

RUN sudo apt-get update && sudo apt-get install -yq \
  clang-9 \
  cmake \
  git \
  mull \
  ninja-build

RUN sudo sysctl -w kernel.core_pattern=/dev/null

ENV SOURCE_DIR=/workspace/mull-workshop/source
ENV BUILD_DIR=/workspace/build
