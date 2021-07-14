Sequel.migration do
  up do
    create_table(:cities) do
      primary_key   :id
      String        :nombre
      foreign_key   :province_id , :provinces
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:cities)
  end
end