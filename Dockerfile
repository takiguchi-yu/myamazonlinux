FROM amazonlinux:latest
# Or command: docker run -it --rm --name myamazonlinux -v ~/.aws:/root/.aws amazonlinux:latest bash

RUN yum update -y && \
    yum install -y \
      groupinstall "Development tools" \
      gcc gcc-c++ zlib-devel bzip2 bzip2-devel readline readline-devel sqlite sqlite-devel openssl openssl-devel git tar make vim wget zip unzip \
    && yum clean all

# pyenvのインストール
# See: https://github.com/pyenv/pyenv#installation
RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv
# 環境変数の設定
RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile \
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile \
    echo 'eval "$(pyenv init --path)"' >> ~/.profile
RUN echo 'eval "$(pyenv init -)"' >> ~/.bashrc
# シェルの再起動
RUN source ~/.profile
# Python3.8.11のインストール
RUN pyenv install 3.8.11
RUN pyenv global 3.8.11 
# pyenv shell 3.8.11
