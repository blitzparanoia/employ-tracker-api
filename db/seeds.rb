# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company = Company.create(name: 'ACME.INC')

employee = Employee.create(company_id: 1, first_name:'Jane', last_name:'Doe', department:'Kitchen',
position: 'Cook', active: true)

employee_two = Employee.create(company_id: 1, first_name:'John', last_name:'Doe', department:'HR',
position: 'Assitant', active: true)

employee_three = Employee.create(company_id: 1, first_name:'John', last_name:'Smith', department:'Sanitation',
position: 'Porter', active: true)
