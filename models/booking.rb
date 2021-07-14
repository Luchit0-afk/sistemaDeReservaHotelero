class Booking < Sequel::Model
	many_to_one :clients
	many_to_one :hotels
	many_to_one :rooms
end