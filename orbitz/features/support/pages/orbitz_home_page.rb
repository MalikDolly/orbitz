require_relative '../modules/orbitz_utilities_module'

class OrbitzHomePage
  include PageObject
  include OrbitzUtilities
  page_url 'www.orbitz.com'
button(:select_flight_tab, id:'tab-flight-tab-hp')
label(:select_flight_type_roundtrip, id:'flight-type-roundtrip-label-hp-flight')
  text_field(:dep_airport,id:'flight-departing-hp-flight')
text_field(:arr_airport,id:'flight-returning-hp-flight')
ul(:all_airports,class:'results')
  text_field(:dep_date,id:'flight-departing-hp-flight')
  text_field(:arr_date, id:'flight-returning-hp-flight')
  button(:search_button, class:'btn-primary btn-action gcw-submit')
  #one way below is to define all the error messages together
  div(:error_messages,class:'alert-message')
  # other way to define error messages individually
  # if it is link u can define ir simply call it in your step definition
  # link(:origin_error ,class:"error-link")
  # link(:destination_error, class:"error-link")
  # link(:flight_dep_date_error, class:"error-link")
  # link(:flight_ret_date_error, class:"error-link")
  #
  # def verify_origin_error_msg_exists?
  #   origin_error_element.text.include? error_message
  # end

end

def select_dep_airport city_name, airport_name
  #self.dep_airport = city_name
  select_airport airport_name
  #self.dep_airport_element.send_keys = city_name
end
def select_arr_airport city_name, airport_name
  self.arr_airport = city_name
   select_airport airport_name
  #self.arr_airport_element.send_keys = city_name
end

def select_dep_date no_of_days
  self.dep_date = change_date no_of_days
end
def select_arr_date no_of_days
  self.arr_date = change_date no_of_days
end

def verify_error_messages_exists? error_msg
error_messages_element.list_item_elements.each do |each_messages|
  if each_messages.text.include? error_msg
    p 'Message Exists'
    break
  end
end
end


# @browser.button(id:'tab-flight-tab-hp').click
# @browser.label(id:'flight-type-roundtrip-label-hp-flight').click
#
#text_field(:dep_airport,id:'flight-departing-hp-flight')
#text_field(:arr_airport,id:'flight-returning-hp-flight')
#ul(:all_airports,class:'results')

