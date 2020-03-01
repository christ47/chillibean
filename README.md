# chillibean project

Page Object Model for testing UI

## How to use
This repository can be cloned from https://github.com/christ47/chillibean.

Download the relevant version of chromedriver and place on your path.

Download the gems from the Gemfile using the following command in your terminal in the root of the repository:
$ gem install bundler
$ bundle install

The gems used in this project are selenium webdriver, capybara, cucumber and rspec

To run the script for all test, go to the root of the repository and type into your terminal
$ cucummber

To run specfic test run use the flag -t and specify the test you wish to run using the test tag.
e.g.
cucumber -t @credentials1
