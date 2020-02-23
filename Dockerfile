FROM docker.io/library/ruby@sha256:9dace9e2f7f9183a12e3487f8746d6a339e794bc3b0dcca8d2683183efefd4c7

#RUN yum install -y qq build-essential libpq-dev nodejs
RUN cat /etc/*release

RUN mkdir  /shop
WORKDIR /shop
ADD . /shop
RUN which bundle
RUN gem install bundler -v 1.17.3
RUN bundle package

RUN bundle install

COPY docker-entrypoint.sh /usr/local/bin

RUN chmod 777 /usr/local/bin/docker-entrypoint.sh \
    && ln -s /usr/local/bin/docker-entrypoint.sh /

ENTRYPOINT ["docker-entrypoint.sh"]
