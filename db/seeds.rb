# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

I18n.backend.store_translations :en, musicians: 'Musicians'
I18n.backend.store_translations :de, musicians: 'Musiker'
I18n.backend.store_translations :en, rehearsal_room: 'Rehearsal room'
I18n.backend.store_translations :de, rehearsal_room: 'Proberaum'
I18n.backend.store_translations :en, producer: 'Producer'
I18n.backend.store_translations :de, producer: 'Produzent'
I18n.backend.store_translations :en, studio: 'Recording Studio'
I18n.backend.store_translations :de, studio: 'Tonstudio'
I18n.backend.store_translations :en, mixing: 'Mixing'
I18n.backend.store_translations :de, mixing: 'Mixing'
I18n.backend.store_translations :en, mastering: 'Mastering'
I18n.backend.store_translations :de, mastering: 'Mastering'
I18n.backend.store_translations :en, graphics: 'Graphics'
I18n.backend.store_translations :de, graphics: 'Graphics'
I18n.backend.store_translations :en, distribution: 'Distribution'
I18n.backend.store_translations :de, distribution: 'Distribution'
I18n.backend.store_translations :en, video: 'Video'
I18n.backend.store_translations :de, video: 'Video'
I18n.backend.store_translations :en, gigs: 'Gigs'
I18n.backend.store_translations :de, gigs: 'Gigs'
I18n.backend.store_translations :en, transportation: 'Transportation'
I18n.backend.store_translations :de, transportation: 'Transportation'

musicians_category = Category.where(name: I18n.translate('musicians')).first_or_create(name: I18n.translate('musicians'))
rehearsal_room_category = Category.where(name: I18n.translate('rehearsal_room')).first_or_create(name: I18n.translate('rehearsal_room'))
producer_category = Category.where(name: I18n.translate('producer')).first_or_create(name: I18n.translate('producer'))
studio_category = Category.where(name: I18n.translate('studio')).first_or_create(name: I18n.translate('studio'))
mixing_category = Category.where(name: I18n.translate('mixing')).first_or_create(name: I18n.translate('mixing'))
mastering_category = Category.where(name: I18n.translate('mastering')).first_or_create(name: I18n.translate('mastering'))
graphics_category = Category.where(name: I18n.translate('graphics')).first_or_create(name: I18n.translate('graphics'))
distribution_category = Category.where(name: I18n.translate('distribution')).first_or_create(name: I18n.translate('distribution'))
video_category = Category.where(name: I18n.translate('video')).first_or_create(name: I18n.translate('video'))
gigs_category = Category.where(name: I18n.translate('gigs')).first_or_create(name: I18n.translate('gigs'))
transportation_category = Category.where(name: I18n.translate('transportation')).first_or_create(name: I18n.translate('transportation'))