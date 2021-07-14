Sequel.migration do
  up do
    create_table(:hotels) do
      primary_key   :id
      String        :nombre
      foreign_key   :city_id , :cities
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:hotels)
  end
end
