FROM ruby:2.7.1-alpine3.12

ENV LANG C.UTF-8
RUN apk upgrade && \
    apk add --no-cache \
    bash \
    build-base \
    curl-dev \
    git \
    graphviz \
    imagemagick \
    imagemagick-dev \
    less \
    libxml2-dev \
    libxslt-dev \
    mysql-client \
    mysql-dev \
    nodejs \
    npm \
    openssl \
    readline \
    readline-dev \
    tar \
    ttf-freefont \
    tzdata \
    udev \
    wget \
    yaml \
    yaml-dev\
    zlib \
    zlib-dev

RUN gem install bundler
RUN gem update

# -------------------------------------------------
# HTML PDF変換 で headless Chrome を利用するための構築
#
# puppeteer の alpine での構築手順を参照
# https://github.com/GoogleChrome/puppeteer/blob/master/docs/troubleshooting.md

RUN apk upgrade && \
      apk add --no-cache \
      chromium \
      nss \
      freetype \
      freetype-dev \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      nodejs \
      npm

# Google Fontのinstall
RUN mkdir /noto
ADD https://noto-website.storage.googleapis.com/pkgs/NotoSansCJKjp-hinted.zip /noto
WORKDIR /noto
RUN unzip NotoSansCJKjp-hinted.zip && \
    mkdir -p /usr/share/fonts/noto && \
    cp *.otf /usr/share/fonts/noto && \
    chmod 644 -R /usr/share/fonts/noto/ && \
    fc-cache -fv
WORKDIR /
RUN rm -rf /noto

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD true
RUN npm install puppeteer

WORKDIR /var/www/backend

COPY ./Gemfile .
COPY ./Gemfile.lock .

RUN bundle install

COPY . .

COPY ./services.sh /var/www/scripts/
RUN chmod +x /var/www/scripts/services.sh

CMD ["/var/www/scripts/services.sh"]

