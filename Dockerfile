FROM ruby:3.0.0-alpine as Builder

RUN apk add --update --no-cache \
    build-base \
    postgresql-dev \
    git

RUN mkdir /project
WORKDIR /project
ADD Gemfile /project/Gemfile

ADD Gemfile.lock /project/Gemfile.lock
RUN bundle install
ADD . /project

FROM ruby:3.0.0-alpine as Final

RUN apk add --update --no-cache \
    build-base \
    postgresql-client \
    git

COPY --from=Builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=Builder /project/ /project/

WORKDIR /project