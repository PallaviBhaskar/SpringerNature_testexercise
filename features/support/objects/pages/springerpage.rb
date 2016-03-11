
class Home < SitePrism::Page
   set_url "http://link.springer.com"
  

  element :search_icon, "input[id='search']"
  element :search_field, "input[id='query']"
  element :search_result, "li.no-access"
  
end