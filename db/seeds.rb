# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#here i create my test items

User.create(username:"osifo@dealdey.com", designation:"software developer", department: "IT", fullname: "Anosike Osifo", facebook:"", bbm:"123456AB")
User.create(username:"segun@dealdey.com", designation:"software developer", department: "IT", fullname: "Olutayo Segun", facebook:"", bbm:"123456AB")
User.create(username:"mary@dealdey.com", designation:"Recruitment Officer", department: "HR", fullname: "Rukevwe Mary", facebook:"", bbm:"123456AB")

AuctionItem.create(name:"test item", code: "TST1234", description: "Test Item", status: "Pending", quantity: "2", user_id: 1 )

AuctionItem.create(name:"test item 2", code: "TST2234", description:"Test Item 2 with new battery", status: "Pending", quantity: "1", user_id: 2 )