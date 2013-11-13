# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Trade.create(name: 'Carpenter', price: 150)
Trade.create(name: 'Plumber', price: 120)
Trade.create(name: 'Electrician', price: 140)
Trade.create(name: 'Block layer', price: 110)
Trade.create(name: 'Plasterer', price: 150)
Trade.create(name: 'Brick layer', price: 110)
Trade.create(name: 'Welder', price: 100)

Tradesperson.create(name: 'John Bell', phone: '0877596225', address: 'Dublin', email: 'pjbenson87@gmail.com', photo: 'man3.jpg',  fullyQualified: true, trade: 'Carpenter', trade_id: 1)
Tradesperson.create(name: 'Mick Wallace', phone: '0877596114', address: 'Galway', email: 'pjbenson87@gmail.com', photo: 'man4.jpg', fullyQualified: true, trade: 'Plumber', trade_id: 2)
Tradesperson.create(name: 'Sam Bub', phone: '0877486225', address: 'Cork', email: 'pjbenson87@gmail.com', photo: 'man5.jpg', fullyQualified: true, trade: 'Electrician', trade_id: 3)
Tradesperson.create(name: 'Nick Watney', phone: '0871246885', address: 'Limerick', email: 'pjbenson87@gmail.com', photo: 'man6.jpg', fullyQualified: true, trade: 'Block Layer', trade_id: 4)
Tradesperson.create(name: 'Frank Miggan', phone: '0877123557', address: 'Belfast', email: 'pjbenson87@gmail.com', photo: 'man.jpg', fullyQualified: true, trade: 'Plasterer', trade_id: 5)
Tradesperson.create(name: 'Gavin Murphy', phone: '0877123112', address: 'Kildare', email: 'pjbenson87@gmail.com', photo: 'man2.jpg', fullyQualified: true, trade: 'Brick Layer', trade_id: 6)
Tradesperson.create(name: 'Martin Walsh', phone: '0877785557', address: 'Meath', email: 'pjbenson87@gmail.com', photo: 'man4.jpg', fullyQualified: true, trade: 'Welder', trade_id: 7)

Customer.create(name: 'Paul Benson', address: 'Kildare', phone: '0869542445', email: 'pjbenson87@gmail.com', photo: 'man.jpg', password: 'password')
Customer.create(name: 'Shane Doyle', address: 'Dublin', phone: '0869541592', email: 'pjbenson87@gmail.com', photo: 'man2.jpg', password: 'password')

