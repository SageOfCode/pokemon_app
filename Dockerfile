# Use Ruby 3.2.2 as the base image
FROM ruby:3.2.2

# Install dependencies
# RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get update -qq && \
    apt-get install -y nodejs postgresql-client

# Set the working directory inside the container
WORKDIR /pokemon_app

# Copy the Gemfile and Gemfile.lock
COPY Gemfile /pokemon_app/Gemfile
COPY Gemfile.lock /pokemon_app/Gemfile.lock

# Install gems
RUN bundle install
# Uncomment the next line if you wish to update all gems
# RUN bundle update

# Copy the main application
COPY . /pokemon_app

# Expose the port the app runs on
EXPOSE 3000

# Start the main process
CMD ["rails", "server", "-b", "0.0.0.0"]
