# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rehearsal_space_category = Category.where(name: 'rehearsal_room').first_or_create(name: 'rehearsal_room')
producer_category = Category.where(name: 'producer').first_or_create(name: 'producer')
studio_category = Category.where(name: 'studio').first_or_create(name: 'studio')
mixing_category = Category.where(name: 'mixing_engineer').first_or_create(name: 'mixing_engineer')
mastering_category = Category.where(name: 'mastering_engineer').first_or_create(name: 'mastering_engineer')
distribution_category = Category.where(name: 'distribution').first_or_create(name: 'distribution')