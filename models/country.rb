class Country < Sequel::Model
	one_to_many :provinces
end