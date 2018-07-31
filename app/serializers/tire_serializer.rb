class TireSerializer < ActiveModel::Serializer
  attributes :name, :observations, :manufactured, :stock, :created_at
end
