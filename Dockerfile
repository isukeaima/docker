FROM ruby:2.6
RUN apt-get update && apt-get install -y \
      build-essential \
      libpq-dev \
      nodejs \
      mariadb-client &&\
      curl -o- -L https://yarnpkg.com/install.sh | bash
WORKDIR /test-product
COPY Gemfile Gemfile.lock /test-product/
RUN bundle install