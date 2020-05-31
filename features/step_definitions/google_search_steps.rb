# frozen_string_literal: true

Given(/^I am on the Google Search page$/) do
  GoogleSearchPage.new(@browser)
  visit_page GoogleSearchPage
end

When(/^I search for "([^\"]*)" (with|without) luck$/) do |search_text, luck|
  on_page(GoogleSearchPage) do |page|
    page.search_text_field = search_text
    luck == 'with' ? [page.feeling_lucky_btn] : [page.google_search_btn]
  end
end

Then(/^I? (am taken to a "([^\"]*)" related website|see results for "([^\"]*)" \
on the Google Results page)$/) do |search_text|
  expect(@browser.text).to include(search_text)
end
