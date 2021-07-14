class City < Sequel::Model
	one_to_many :hotels
	many_to_one :provinces
end