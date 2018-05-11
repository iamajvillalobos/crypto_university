FROM ruby:2.5.0

RUN apt-get update -yqq && \
    apt-get install -yqq --no-install-recommends nodejs

RUN mkdir /app
WORKDIR /app

COPY Gemfile* ./

RUN bundle install

COPY . ./

CMD ["rails", "s", "-b", "0.0.0.0"]
