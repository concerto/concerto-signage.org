# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

puts 'Creating Demo Page'
Page.where(title: "Demo", language: "en").first_or_create
puts 'Creating Deploy Page'
Page.where(title: "Deploy", language: "en").first_or_create

puts 'Creating v1 Help Category'
Category.where(name: "v1 Help", language: "en", is_help_category: true, description: "V1 Help Pages").first_or_create
puts 'Creating Help Category'
Category.where(name: "Help", language: "en", is_help_category: true, description: "Help Pages").first_or_create
puts 'Creating Announcements Category'
Category.where(name: "Announcements", language: "en", is_help_category: false, description: "Announcement Pages").first_or_create
