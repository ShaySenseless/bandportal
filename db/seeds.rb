# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

musicians_category = Category.where(name: 'Musicians').first_or_create(name: 'Musicians')
rehearsal_room_category = Category.where(name: 'Rehearsal room').first_or_create(name: 'Rehearsal room')
producer_category = Category.where(name: 'Producer').first_or_create(name: 'Producer')
studio_category = Category.where(name: 'Studio').first_or_create(name: 'Studio')
mixing_category = Category.where(name: 'Mixing').first_or_create(name: 'Mixing')
mastering_category = Category.where(name: 'Mastering').first_or_create(name: 'Mastering')
graphics_category = Category.where(name: 'Graphics').first_or_create(name: 'Graphics')
distribution_category = Category.where(name: 'Distribution').first_or_create(name: 'Distribution')
video_category = Category.where(name: 'Video').first_or_create(name: 'Video')
gigs_category = Category.where(name: 'Gigs').first_or_create(name: 'Gigs')
transportation_category = Category.where(name: 'Transportation').first_or_create(name: 'Transportation')