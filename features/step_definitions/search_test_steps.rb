# language: en

######### Given ##########
Given(/^it is on the website Giphy$/) do
  @search_page = SearchPage.new
  @search_page.load
end

######### When ###########
When("performing a search with valid data") do
  @search_page = SearchPage.new
  @search_page.search_giphy
  end

When('performing a search with invalid data') do
  @search_page = SearchPage.new
  @search_page.invalid_search_giphy  
end


######### Then ###########

Then('the search is presented successfully') do
  @search_page = SearchPage.new
  @search_page.validate_giphy
end

Then('the search is presented an error message') do
  @search_page = SearchPage.new
  @search_page.error_search_giphy  
end