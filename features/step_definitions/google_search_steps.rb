# frozen_string_literal: true

Given(/^I am on the Google Search page$/) do
  GoogleSearchPage.new(@browser)
  visit_page GoogleSearchPage
end

When(/^I search for "([^\"]*)" (with luck|without luck)$/) do |search_text, luck|
  on_page(GoogleSearchPage) do |page|
    page.search_field = search_text
    luck == 'with luck' ? [page.lucky_btn] : [page.search_btn]
  end
end

Then(/^I? (see results for "([^\"]*)" on the Google Results page|am taken to a\
 "([^\"]*)" related website)$/) do |search_text|
  expect(@browser.text).to include(search_text)
end
