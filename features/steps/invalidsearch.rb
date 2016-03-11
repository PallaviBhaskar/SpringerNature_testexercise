Given(/^I navigate to SpringerNature home page$/) do
  @home = Home.new
  @home.load
end

When(/^I do an invalid search "(.*?)"$/) do |invalidsearch|
 
@home.search_field.set "#{invalidsearch}"
@home.search_icon.click
@home.wait_for_search_icon(5)
end


Then(/^I see an appropriate error message$/) do 
 expect(@home).to have_text "Sorry – we couldn’t find what you are looking for. Why not... "
end