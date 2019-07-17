FROM ruby:2.6.3
RUN gem install html-proofer -v 3.4.0
RUN curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
RUN unzip awscli-bundle.zip
RUN  ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
RUN curl -o /usr/local/bin/jq http://stedolan.github.io/jq/download/linux64/jq && chmod +x /usr/local/bin/jq

RUN gem install bundler

ENV LANG=en_US.UTF-8 \
	LANG=C.UTF-8 \
    LANGUAGE=en_US.UTF-8
