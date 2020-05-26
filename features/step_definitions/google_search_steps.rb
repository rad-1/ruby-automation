# frozen_string_literal: true

Given(/^I am on the Google Search page$/) do
  GoogleSearchPage.new(@browser)
  visit_page GoogleSearchPage
end

When(/^I search for "([^\"]*)" (without Feeling Lucky|with Feeling Lucky)$/) do
  |search_text, no_luck|
  on_page(GoogleSearchPage) do |page|
    page.search_field = search_text
    if no_luck == 'without Feeling Lucky'
      page.search_btn
    else
      page.lucky_btn
    end
  end
end

Then(/^I? (see results for "([^\"]*)" on the Google Results page|am taken to a\
 "([^\"]*)" related website)$/) do |search_text|
  expect(@browser.text).to include(search_text)
end
