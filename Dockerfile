FROM ruby:2.5.3-alpine3.8

#requirements for ruby app
RUN apk add --no-cache --update build-base \
                                linux-headers \
                                git \
                                postgresql-dev \
                                nodejs \
                                tzdata

RUN mkdir -p /var/www/app/
WORKDIR /var/www/app
COPY Gemfile /var/www/app/Gemfile
COPY Gemfile.lock /var/www/app/Gemfile.lock
RUN bundle install
COPY . /var/www/app

EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]