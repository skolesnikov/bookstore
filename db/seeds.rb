# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Book.create(title:'The Hobbit', author:'Tolkien', pages:384, price:22.68)
Book.create(title:'Atlas Shrugged', author:'Ayn Rand', pages:1200, price:18.81)
Book.create(title:"Ender's Game", author:'Orson Scott Card', pages:352, price:4.83)
Book.create(title:'Hamlet', author:'Shakespeare', pages:342, price:5.34)
