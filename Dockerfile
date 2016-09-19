FROM ruby:2.3.1

RUN apt-get update \
  && apt-get install -y \
    node \
    python \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/

RUN gem install \
  jekyll \
  minima \
  --no-ri --no-rdoc

WORKDIR /src

EXPOSE 4000

ENTRYPOINT ["jekyll"]

CMD ["serve", "-H", "0.0.0.0"]
