# frozen_string_literal: true

Given(/^I am on the Google Search page$/) do
  @browser.goto 'https://www.google.com/'
end

When(/^I search for "([^\"]*)" (without Feeling Lucky|with Feeling Lucky)$/) do
  |search_text, no_luck|
  @browser.text_field(name: 'q').set(search_text)
  if no_luck == 'without Feeling Lucky'
    @browser.button(name: 'btnI').click
  else
    @browser.button(name: 'btnK').click
  end
end

Then(/^I? (see results for "([^\"]*)" on the Google Results page|am taken to a\
 "([^\"]*)" related website)$/) do |search_text|
  expect(@browser.text).to include(search_text)
end
