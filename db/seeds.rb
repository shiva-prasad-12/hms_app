# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


	RoomType.create(:description => "Deluxe", :max_capacity => "3", :price => 1000.00 )
	RoomType.create(:description => "Ultra Deluxe", :max_capacity => "6", :price => 2000.00 )
	RoomType.create(:description => "Normal", :max_capacity => "2", :price => 500.00 )

	Room.create(:number => 1, :name => "Room1", :status => "Booked", :room_type_id => 1)
	Room.create(:number => 2, :name => "Room2", :status => "Booked", :room_type_id => 2)
	Room.create(:number => 3, :name => "Room3", :status => "Booked", :room_type_id => 3)
	Room.create(:number => 4, :name => "Room4", :status => "Booked", :room_type_id => 1)
	Room.create(:number => 5, :name => "Room5", :status => "Booked", :room_type_id => 2)
	Room.create(:number => 6, :name => "Room6", :status => "Booked", :room_type_id => 3)
	Room.create(:number => 7, :name => "Room7", :status => "Booked", :room_type_id => 1)
	Room.create(:number => 8, :name => "Room8", :status => "Booked", :room_type_id => 2)
	Room.create(:number => 9, :name => "Room9", :status => "Booked", :room_type_id => 3)
	Room.create(:number => 10, :name => "Room10", :status => "Booked", :room_type_id => 1)
	Room.create(:number => 11, :name => "Room11", :status => "Booked", :room_type_id => 2)
	Room.create(:number => 12, :name => "Room12", :status => "Booked", :room_type_id => 3)
	Room.create(:number => 13, :name => "Room13", :status => "Booked", :room_type_id => 1)
	Room.create(:number => 14, :name => "Room14", :status => "Booked", :room_type_id => 2)
	Room.create(:number => 15, :name => "Room15", :status => "Booked", :room_type_id => 3)
