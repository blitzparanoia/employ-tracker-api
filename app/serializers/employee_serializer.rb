class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :department, :position, :active

  belongs_to :company
end
