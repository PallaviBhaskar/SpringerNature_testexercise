Given(/^I go to SpringerNature home page$/) do
  @home = Home.new
  @home.load
end

When(/^I search for a valid product "(.*?)"$/) do |book_searchquery|
 
@home.search_field.set "#{book_searchquery}"
@home.search_icon.click
@home.wait_for_search_icon(5)
end

Then(/^I see a view of products matching to the search done$/) do
 expect(@home).to have_no_content "Sorry – we couldn’t find what you are looking for. Why not... "
 expect(@home).to have_search_result
end