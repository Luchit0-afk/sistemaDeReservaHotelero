Sequel.migration do
  up do
    create_table(:bookings) do
      primary_key   :id
      Integer       :cantPersonas
      foreign_key   :hotel_id  , :hotels
      foreign_key   :room_id   , :rooms
      foreign_key   :client_id , :clients
      DateTime      :fecha_inicio_reserva
      DateTime      :fecha_fin_reserva
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:bookings)
  end
end