# frozen_string_literal: true

# Google Search Page
class GoogleSearchPage
  # PageObject automatically includes browser initialization method
  include PageObject

  page_url 'https://www.google.com/'
  text_field(:search_text_field, name: 'q')
  button(:google_search_btn, name: 'btnK')
  button(:feeling_lucky_btn, name: 'btnI')
end
