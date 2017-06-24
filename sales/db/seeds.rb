# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




User.create name: 'Jose', status: :active, kind: :salesman, email: 'salesman@teste.com', password: 123456
User.create name: 'Manuel', status: :active, kind: :salesman, email: 'salesman2@teste.com', password: 123456
User.create name: 'Marcos', status: :active, kind: :manager, email: 'manager@teste.com', password: 123456

Product.create name: 'Smartphone', description:'Un smarthphone novo ...', status: :active, price: 10
Product.create name: 'Tablet', description:'Un tablet novo ...', status: :active, price: 20

Discount.create name: 'Descontro carnaval', description: 'Aplique ese descontro no carnaval', value: '10', kind: :porcent, status: :active
Discount.create name: 'Descontro carnaval dinero', description: 'Aplique ese descontro cuando sea posible', value: '10', kind: :porcent, status: :active


Client.create name: 'Paulo', company_name: 'Google', document: '1234', email: 'paulo@google.com', user: User.first
Client.create name: 'Julia', company_name: 'Google', document: 'abcd', email: 'julia@google.com', user: User.first
