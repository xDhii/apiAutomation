# WebJump Automation Project

To develop it, I've used these tools:

- Ubuntu 20.04
- Ruby 2.6
- Cucumber
- Bundler
- Faker

This project has the goal of automate webjump test API plataform with structure Ruby, also has
implementation of the design pattern page objects.

The project uses BDD to write test scenarios and it's structure was constructed to be similar with Cucumber implementation.

## Requirements

You'll need to install the following:

- Ruby (Recommended version 2.6)
- Bundler gem (Recommended latest version)

## Installation

You can install the project after having installed Ruby 2.6.

Installing bundler:
Run the the following command line in the project root path:

```Ruby
  gem install bundler
```

Using bundler:
First of all, you need to be in the project root path,
Bundler will install all needed gems to run this automation.
Run the the following command line:

```Ruby
  bundle install
```

**This command should install all the libraries needed to run the project.**

To run the tests, you just need to run the following command:

```Ruby
  bundle exec cucumber
```

If you want to run a specific test scenario, use the tag argument.
Ex:

```Ruby
  bundle exec cucumber -t @tag_you_want_to_use
```

Available tags:
@get
@post
@startup
@lojinha

Ps: @startup scenario may fail due to a cron job on the server that limits the API to store maximum 400 . To avoid it, run the @cleanStartup and wait few minutes until the endpoint is clean

To generate the report with results and screenshots, I've used the report builder tool.
All the results should be on the results\ folder after running the automation.
