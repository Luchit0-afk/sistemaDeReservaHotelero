class Room < Sequel::Model
	many_to_one :hotels
	one_to_many :bookings
end