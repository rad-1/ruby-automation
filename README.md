# Ruby Automation (macOS)
An automation framework written in Ruby and Cucumber Gherkin that aims to follow Cheezy's PageObject principles.

## Requirements
* [Homebrew](https://brew.sh/)
* [rbenv](https://github.com/rbenv/rbenv)
* [Ruby v2.7.0](https://www.ruby-lang.org/en/downloads/)
* [Bundler](https://bundler.io/)
* [Google Chrome v83.0.4103.39](https://www.google.com/chrome/)
* [ChromeDriver v83.0.4103.39](https://chromedriver.chromium.org/downloads)

## Installation 
1. Install Homebrew with the following command:

    ~~~ sh
    $ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    ~~~

2. Brew update to make sure Homebrew is up to date:

    ~~~ sh
    $ brew update
    ~~~
    
3. Brew doctor to make sure that your system is ready to brew:

    ~~~ sh
    $ brew doctor
    ~~~

4. Add Homebrew’s location to your $PATH in your .bash_profile or .zshrc file:

    ~~~ sh
    $ export PATH="/usr/local/bin:$PATH"
    ~~~
    
5. Install rbenv and setup rbenv in your shell:

    ~~~ sh
    $ brew install rbenv
    $ rbenv init
    ~~~
    
    Note: Make sure to close your current terminal windows and open a new one so that your changes take effect.
    
6. Use Homebrew to install the ruby-build command-line utility to make life easier when installing a new Ruby version:

    ~~~ sh
    $ brew install ruby-build
    ~~~

7. Now use rbenv to install Ruby v2.7.0:

    ~~~ sh
    $ rbenv install 2.7.0
    ~~~

8. Set Ruby v2.7.0 as the global Ruby version:
    
    ~~~ sh
    $ rbenv global 2.7.0
    ~~~
    
9. Now that Ruby is installed, it's time to install the Bundler gem: 

    ~~~ sh
    $ gem install bundler
    ~~~

10. Download and unpack [ChromeDriver v83.0.4103.39](https://chromedriver.storage.googleapis.com/index.html?path=83.0.4103.39/). You should now see a ChromeDriver executable file.

11. Move ChromeDrive to your `/usr/local/bin` directory:

    ~~~ sh
    $ mv chromedriver /usr/local/bin
    ~~~
 
12. Installation complete!

## Running the Tests
1. Run Bundler to install gem dependencies from the Gemfile in your project's root:

    ~~~ sh
    $ cd /your/project/path
    $ bundle install
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
