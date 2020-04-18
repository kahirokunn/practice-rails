FROM ruby

RUN apt update \
  && apt update \
  && apt install sqlite3 \
  && apt install -y nodejs npm \
  && npm install n -g \
  && n stable \
  && apt purge -y nodejs npm \
  && apt install -y yarn \
  && gem install rails

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
