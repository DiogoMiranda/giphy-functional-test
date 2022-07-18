class SearchPage < SitePrism::Page
  set_url "https://giphy.com/"

  element :search_field, "input[class='Input-sc-1rx367t cnqpd']"
  element :search_btn, "input[class='search-button__SearchIcon-sc-10g0hll-0 gvARnm']"
  

  element :gif, "input[class='Container-sc-1vr196v cjAPQI']"
  element :login_btn, "input[id='login-submit-button']"


def search_giphy
      first(:xpath, '//*[@class="Input-sc-1rx367t cnqpd"]').click
      search_field.set (NAME[:valid_text])
      first(:xpath, '//*[@class="Input-sc-1rx367t cnqpd"]').click
      find(:xpath, "//*[@class='search-button__SearchIcon-sc-10g0hll-0 gvARnm']").click
      first(:xpath, "//*[@class='giphy-gif-img giphy-img-loaded']").click
end

def invalid_search_giphy
      first(:xpath, '//*[@class="Input-sc-1rx367t cnqpd"]').click
      search_field.set (NAME[:invalid_text])
      first(:xpath, '//*[@class="Input-sc-1rx367t cnqpd"]').click
      find(:xpath, "//*[@class='search-button__SearchIcon-sc-10g0hll-0 gvARnm']").click
end

def validate_giphy
     page.has_text?('Share')
     page.has_text?('Favorite')
end

def error_search_giphy
     page.has_text?('0 GIFs')
end
end

