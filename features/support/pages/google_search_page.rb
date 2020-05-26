# frozen_string_literal: true

# Google Search Page
class GoogleSearchPage
  # PageObject automatically includes browser initialization method
  include PageObject

  page_url 'https://www.google.com/'
  text_field(:search_field, name: 'q')
  button(:search_btn, name: 'btnI')
  button(:lucky_btn, name: 'btnK')

  def search_field_self(search_field_text)
    self.search_field = search_field_text
  end
end
