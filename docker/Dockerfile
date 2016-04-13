FROM ubuntu:14.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 561F9B9CAC40B2F7

RUN apt-get update && \
    apt-get install -y apt-transport-https ca-certificates

RUN sh -c 'echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list'

RUN apt-get update && \
    apt-get install -y nginx-extras passenger

RUN apt-get update && \
    apt-get install -y git curl

RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv
RUN echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
RUN echo 'eval "$(rbenv init -)"' >> ~/.bashrc
RUN git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build


RUN apt-get update && \
    apt-get install -y gcc make libssl-dev libreadline-dev zlib1g-dev

RUN /root/.rbenv/bin/rbenv install 2.2.3
RUN /root/.rbenv/bin/rbenv global 2.2.3

RUN apt-get install -y openssh-server

RUN echo 'root:zzz' | chpasswd

RUN echo 'PermitRootLogin yes' >> /etc/ssh/sshd_config

CMD service ssh start && nginx -g 'daemon off;'
#CMD nginx -g 'daemon off;'