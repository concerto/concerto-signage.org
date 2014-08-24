# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts 'Creating Frontpage Page'
Page.where(title: "Frontpage", language: "en").first_or_create
puts 'Creating Demo Page'
Page.where(title: "Demo", language: "en").first_or_create
puts 'Creating Try Page'
Page.where(title: "Try", language: "en").first_or_create
puts 'Creating Deploy Page'
Page.where(title: "Deploy", language: "en").first_or_create
