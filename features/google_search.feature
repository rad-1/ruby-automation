Feature: Google Search

  Per Wikipedia, Google Search, also referred to as Google Web Search or simply
  Google, is a web search engine developed by Google.

  Background:
    Given I am on the Google Search page

  Scenario: Perform a Google Search with Feeling Lucky
    When I search for "Puppies" with Feeling Lucky
    Then I see results for "Puppies" on the Google Results page

  Scenario: Perform a Google Search without Feeling Lucky
    When I search for "Kittens" without Feeling Lucky
    Then I am taken to a "Kittens" related website
