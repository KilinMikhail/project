FROM ruby:3.0.0-alpine as Builder

RUN apk add --update --no-cache \
    build-base \
    postgresql-dev \
    git \
    tzdata

RUN mkdir /project
WORKDIR /project

ADD . /project
RUN bundle install


FROM ruby:3.0.0-alpine as Final

RUN apk add --update --no-cache \
    build-base \
    postgresql-client \
    git \
    tzdata

COPY --from=Builder /usr/local/bundle/ /usr/local/bundle/
COPY --from=Builder /project/ /project/

WORKDIR /project