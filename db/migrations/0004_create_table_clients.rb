Sequel.migration do
  up do
    create_table(:clients) do
      primary_key   :id
      String        :nombre
      Integer       :documento
      String        :email
      foreign_key   :city_id , :cities
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:clients)
  end
end