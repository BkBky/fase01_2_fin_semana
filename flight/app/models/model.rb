class Flight < ActiveRecord::Base
  has_and_belongs_to_many :booking
  has_and_belongs_to_many :users
end



 class User < ActiveRecord::Base
  has_and_belongs_to_many :flights
  has_and_belongs_to_many :bookings

 end

class Booking < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_one :flight
end

class UserBooking < ActiveRecord::Base
end

class UserFlight < ActiveRecord::Base
end