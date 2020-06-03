# Ruby Automation (macOS)
An automation framework written in Ruby and Cucumber Gherkin that aims to follow Cheezy's PageObject principles.

## Getting Started
Before continuing, I highly recommend installing the following tools to make your life easier:
* [Homebrew](https://brew.sh/) for installing and managing packages
* [rbenv](https://github.com/rbenv/rbenv) to easily pick and install a Ruby version for your application
* [Bundler](https://bundler.io/), after installing Ruby, to avoid dependency hell and to ensure that the gems you need are present in development

## Requirements
* [Ruby v2.7.0](https://www.ruby-lang.org/en/downloads/)
* [Google Chrome v83.0.4103.39](https://www.google.com/chrome/)
* [ChromeDriver 83.0.4103.39](https://chromedriver.chromium.org/downloads)

## Running the Tests    
1. Run Bundler to install gem dependencies from the Gemfile in the project's root:

    ~~~ sh
    $ cd /your/project/path
    $ gem install bundler
    ~~~

2. Run the tests using the `cucumber` command. All `.feature` files are located in the `features` directory:

    ~~~ sh
    $ cd /your/project/path
    $ cucumber /features/google_search.feature
    ~~~

3. Test results will be displayed in your terminal along with relevant success and failure messages:

    ~~~ sh
    Scenario: Perform a Google Search ("Feeling Lucky")
      When I search for "Puppies" with luck
      Then I am taken to a "Puppies" related website

    Scenario: Perform a Google Search
      When I search for "Kittens" without luck
      Then I see results for "Kittens" on the Google Results page

    2 scenarios (2 passed)
    6 steps (6 passed)
    0m10.742s
    ~~~

## Support
Please send a message to [radicalrad1ance](https://github.com/radicalrad1ance/) if you have questions or suggestions.
