class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.integer :company_id
      t.string :first_name
      t.string :last_name
      t.string :department
      t.string :position
      t.boolean :active

      t.timestamps
    end
  end
end
