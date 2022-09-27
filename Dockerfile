# Create Jekyll container from ruby alpine

FROM ruby:2.7-alpine3.15

# Add Jekyll deps to alpine
RUN apk update
RUN apk add --no-cache build-base gcc cmake git

RUN gem update bundler && gem install bundler jekyll
