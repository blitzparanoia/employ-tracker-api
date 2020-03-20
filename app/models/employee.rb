class Employee < ApplicationRecord

  belongs_to :company
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :first_name, presence: true
    validates :department, presence: true
    validates :position, presence: true
end
