class Province < Sequel::Model
	one_to_many :cities
	many_to_one :countries
end