class Location < ActiveRecord::Base

geocoded_by :my_location
after_validation :geocode

# Here, behind the scenes, we will combine the address and city give to use by the user, while also adding the state (because we're only operating in Georgia here) and Geocode that!

  def my_location
    "#{address}, #{city}, GA"
  end

end
