Sequel.migration do
  up do
    create_table(:provinces) do
      primary_key   :id
      String        :nombre
      foreign_key   :country_id , :countries
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:provinces)
  end
end