class EmployeeSerializer < ActiveModel::Serializer
  attributes :company_id, :id, :first_name, :last_name, :department, :position, :active

  belongs_to :company
end
