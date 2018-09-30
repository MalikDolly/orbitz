class OrbitzFlightSearchResultsPage
  include PageObject
  page_url 'www.orbitz.com'

  span(:search_results_title,class:'title-city-text')
  #fail "Search results are not correct" unless @browser.span(class:'title-city-text').wait_until_present.text.include?'Select your departure to Cleveland'
end


def verify_search_results_are_displayed?
  fail 'Search results are not correct' unless search_results_title_element.wait_until_present.text.include?'Select your departure to Cleveland'

end
