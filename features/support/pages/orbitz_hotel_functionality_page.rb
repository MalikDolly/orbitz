require_relative '../modules/orbitz_hotel_functionality'

class OrbitzHotelFunctionalityPage
  include PageObject
  include OrbitzHotelFunctionality
end
page_url 'www.orbitz.com'