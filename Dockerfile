FROM ruby:2.4.2

COPY . /code
WORKDIR /code
RUN apt-get update && apt-get install -y nodejs \
    && rm -rf /var/lib/apt/lists/* \
    && bundle

EXPOSE 3030
CMD bundle exec dashing start
