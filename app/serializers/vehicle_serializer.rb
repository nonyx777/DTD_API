class VehicleSerializer < ActiveModel::Serializer
  attributes :id, :vehicle_type, :seating_capacity
end
