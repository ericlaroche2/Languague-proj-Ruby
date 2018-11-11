#Eric Laroche
FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /Languague-proj-Ruby
WORKDIR /Languague-proj-Ruby
COPY Gemfile /Languague-proj-Ruby/Gemfile
COPY Gemfile.lock /Languague-proj-Ruby/Gemfile.lock
RUN bundle install
COPY . /Languague-proj-Ruby
EXPOSE 3000
CMD ["rails","db:migrate"]
CMD ["rails","db:seed"]
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

# docker build -t app .
# docker run -itP app
# docker container ls
# localhost:-->genrated port number

