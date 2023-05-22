FROM jekyll/jekyll:4

COPY Gemfile Gemfile

RUN bundle add webrick
