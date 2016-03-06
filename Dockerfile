FROM ruby:2.3.0-alpine
MAINTAINER Jean-Marc Fontaine <jm@jmfontaine.net>

# Install Bash
RUN apk add --no-cache bash
ADD files/.bashrc /root/

# Install serverspec and its dependencies
RUN mkdir /serverspec
WORKDIR /serverspec
ADD files/Gemfile /serverspec/
ADD files/Gemfile.lock /serverspec/
RUN bundle

CMD ["bash"]
