FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.9.1

RUN gem install feed2email --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["feed2email-migrate"]
CMD ["--help"]
