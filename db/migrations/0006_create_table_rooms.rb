Sequel.migration do
  up do
    create_table(:rooms) do
      primary_key   :id
      Integer       :cantPersonasEntran
      String        :tipo
      foreign_key   :hotel_id  , :hotels
      DateTime      :fecha_inicio_reserva1
      DateTime      :fecha_fin_reserva1
      DateTime      :fecha_inicio_reserva2
      DateTime      :fecha_fin_reserva2
      DateTime      :fecha_inicio_reserva3
      DateTime      :fecha_fin_reserva3
      DateTime      :fecha_inicio_reserva4
      DateTime      :fecha_fin_reserva4
      DateTime      :fecha_inicio_reserva5
      DateTime      :fecha_fin_reserva5
      DateTime      :created_at,   default: Sequel::CURRENT_TIMESTAMP
      DateTime      :updated_at,   default: Sequel::CURRENT_TIMESTAMP
    end
  end

  down do
    drop_table(:rooms)
  end
end