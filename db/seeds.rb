# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'money', last_name: 'maker', email: 'moneymakerwats@gmail.com', uid: '', password: '1234' )
User.create(first_name: 'frank', last_name: 'frizzle', email: 'frank@gmail.com', uid: '', password: '1234' )
User.create(first_name: 'Jaeson', last_name: 'Watts', email: 'jaeson.watts@gmail.com', uid: '', password: '1234' )


Pack.create(pack_number: 44, charter_organization: "The Church of the Place")


Leader.create(first_name: 'John', last_name: 'maker', den_id: 1)
Leader.create(first_name: 'Sue', last_name: 'maker', den_id: 2)
Leader.create(first_name: 'Larru', last_name: 'Urru', den_id: 3)

Scout.create(first_name: 'Chip', last_name: 'maker', grade: '1st', den_id: 1)
Scout.create(first_name: 'Salbo', last_name: 'maker', grade: '2st', den_id: 2)
Scout.create(first_name: 'Fluey', last_name: 'Frakes', grade: '3st', den_id: 3)
Scout.create(first_name: 'Bonzo', last_name: 'Frakes', grade: '3st', den_id: 3)

Den.create(grade: '1st', meeting_time: "Tuesday at 6pm", pack_id: 1, leader_id: 1)
Den.create(grade: '2nd', meeting_time: "Tuesday at 7pm", pack_id: 1, leader_id: 1)
Den.create(grade: '3rd', meeting_time: "Wednesday at 6pm", pack_id: 1, leader_id: 1)

