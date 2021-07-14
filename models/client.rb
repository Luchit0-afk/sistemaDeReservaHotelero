class Client < Sequel::Model
	one_to_many :bookings
end