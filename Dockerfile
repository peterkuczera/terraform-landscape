FROM alpine:3.8

RUN apk --no-cache add \
  make=4.2.1-r2 \
  gcc=6.4.0-r9 \
  libc-dev=0.7.1-r0 \
  ruby-dev=2.5.2-r0 \
  ruby-bundler=1.16.2-r1 \
  ruby-json=2.5.2-r0 \
  diffutils=3.6-r1 # this is required for diffy to work on alpine

RUN gem install --no-document --no-ri terraform_landscape
ENTRYPOINT ["landscape"]
