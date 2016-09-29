# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create([{user_name: 'Victor'}, {user_name: 'Pak'}, {user_name: 'Benjamin'}, {user_name: 'Tonia'}, {user_name: 'Andrew'}, {user_name: 'No_Name'}])
Poll.create([{title: 'App Academy', author_id: 1}, {title: 'Progress Tracker', author_id: 1}, {title: 'Corvette', author_id: 3}, {title: 'Nipplesman', author_id: 2}, {title: 'I\'m a dork', author_id: 4}, {title: 'Psychologist', author_id: 5}])
