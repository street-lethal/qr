FROM ruby:2.6.3-alpine
ENV APP_ROOT /app_root
WORKDIR $APP_ROOT
COPY app $APP_ROOT/app
COPY Gemfile* $APP_ROOT/
ENV LANG ja_JP.UTF-8
RUN gem install bundler && bundle install --path vendor/bundle
