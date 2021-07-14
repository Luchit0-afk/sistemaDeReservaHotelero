class Hotel < Sequel::Model
	one_to_many :bookings
	one_to_many :rooms
	many_to_one :cities
end