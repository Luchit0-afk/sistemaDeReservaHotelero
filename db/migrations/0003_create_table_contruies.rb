Sequel.migration do
  up do
    create_table(:countries) do
      primary_key   :id
      String        :nombre
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:countries)
  end
end