# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
 r1 = Role.create({name: "sc_admin", description: "Can perform any CRUD operation on any resource"})
 r2 = Role.create({name: "sc_minimal", description: ""})
 r3 = Role.create({name: "sc_readonly", description: ""})
 r4 = Role.create({name: "sc_create", description: ""})
 r5 = Role.create({name: "sc_regular", description: "Can edit data, readonly lookup tables"})
 r6 = Role.create({name: "sc_supervisor", description: "Can edit lookup tables"})
 r7 = Role.create({name: "sc_delete", description: ""})
 r8 = Role.create({name: "sc_vip", description: ""})
 r9 = Role.create({name: "sc_special1", description: ""})
r10 = Role.create({name: "sc_seller", description: ""})

#
  User.create! email: 'a@e', name: 'admin' , password: 'a', password_confirmation: 'a', role_id: r1.id
  User.create! email: 'a', name: 'admin' , password: 'a', password_confirmation: 'a', role_id: r1.id
#
   u1 = User.create({name: "reg", email: "r", password: "a", password_confirmation: "a", role_id: r5.id})
   u2 = User.create({name: "miniml", email: "m", password: "a", password_confirmation: "a", role_id: r2.id})
#   u3 = User.create({name: "sKev", email: "k@e", password: "a", password_confirmation: "a", role_id: r2.id})
#   u4 = User.create({name: "admin", email: "a", password: "a", password_confirmation: "a", role_id: r3.id})


# i1 = Item.create({name: "Rayban Sunglasses", description: "Stylish shades", price: 99.99, user_id: u2.id})
# i2 = Item.create({name: "Gucci watch", description: "Expensive timepiece", price: 199.99, user_id: u2.id})
# i3 = Item.create({name: "Henri Lloyd Pullover", description: "Classy knitwear", price: 299.99, user_id: u3.id})
# i4 = Item.create({name: "Porsche socks", description: "Cosy footwear", price: 399.99, user_id: u3.id})


# User.create!([
  # {name: "reg", role_id: 1, email: "r@e", encrypted_password: "$2a$11$.9D7oYc8u/JJ1QhymHdSZemPq5QLVEQOWV2PVT2Bs3MJ9WKjwMoxu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  # {name: "sSue", role_id: 2, email: "su@e", encrypted_password: "$2a$11$vy5RB8kXUE1HRHZZOJ69O.1zjkTGF6UvdoD5ftWaP215len0c.rMe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2016-05-30 19:58:58", last_sign_in_at: "2016-05-28 16:56:52", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  # {name: "sKev", role_id: 2, email: "k@e", encrypted_password: "$2a$11$hI4D71DBu3U0i/CIVSXz.elxR1CE4Jg30/ZXV6U7aOjHhT.Ql9MRm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  # {name: "admin", role_id: 3, email: "a@e", encrypted_password: "$2a$11$i.o8VgKn05Fw7GWgERWIP.h7//Ys5QUUBsiI04j15dRdR.mJFBzlq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 10, current_sign_in_at: "2016-06-02 18:11:41", last_sign_in_at: "2016-06-02 18:11:33", current_sign_in_ip: "10.4.10.161", last_sign_in_ip: "10.4.10.161"}
# ])


 Customer.create!([
  {name: "Tan Ah Teck", address: "8 Happy Ave", phone: "88888888", discount: 0.1},
  {name: "Mohammed Ali", address: "1 Kg Java", phone: "99999999", discount: 0.15},
  {name: "Kumar", address: "5 Serangoon Road", phone: "55555555", discount: 0.0},
  {name: "Kevin Jones", address: "2 Sunset boulevard", phone: "22222222", discount: 0.2},
  # {name: "a", address: "", phone: "", discount: nil},
  # {name: "b", address: "", phone: "", discount: nil},
  # {name: "c", address: "", phone: "", discount: nil},
  {name: "David Gleba", address: "462 Albert St.", phone: "5199494568", discount: nil},
  # {name: "e", address: "", phone: "", discount: nil},
  # {name: "f", address: "", phone: "", discount: nil},
 ])

Vehicle.create!([
  {veh_reg_no: "GA5555E", category: "truck", name: "NISSAN CABSTAR 3.0L", desc: "Lorry, Manual ", photo: nil, daily_rate: "89.99"},
  {veh_reg_no: "GA6666F", category: "truck", name: "OPEL COMBO 1.6L", desc: "Van, Manual", photo: nil, daily_rate: "69.99"},
  {veh_reg_no: "SBA1111A", category: "car",  name: "NISSAN SUNNY 1.6L", desc: "4 Door Saloon, Automatic", photo: nil, daily_rate: "99.99"},
  {veh_reg_no: "SBB2222B", category: "car",  name: "TOYOTA ALTIS 1.6L", desc: "4 Door Saloon, Automatic", photo: nil, daily_rate: "99.99"},
  {veh_reg_no: "SBC3333C", category: "car",  name: "HONDA CIVIC 1.8L", desc: "4 Door Saloon, Automatic", photo: nil, daily_rate: "119.99"}
])

RentalRecord.create!([
  {customer_id: 1, vehicle_id: 1, start_date: "2012-01-01", end_date: "2012-01-01", lastUpdated: nil},
  {customer_id: 1, vehicle_id: 2, start_date: "2012-02-01", end_date: "2012-02-01", lastUpdated: nil},
  {customer_id: 3, vehicle_id: 3, start_date: "2012-01-05", end_date: "2012-01-05", lastUpdated: nil},
  {customer_id: 4, vehicle_id: 3, start_date: "2012-01-20", end_date: "2012-01-20", lastUpdated: nil}
])

# Role.create!([
  # {name: "sc_regular", description: "Can read items"},
  # {name: "sc_seller", description: "Can read and create items. Can update and destroy own items"},
  # {name: "sc_admin", description: "Can perform any CRUD operation on any resource"}
# ])
# User2.create!([
  # {name: "reg", role_id: 1, email: "r@e", encrypted_password: "$2a$11$.9D7oYc8u/JJ1QhymHdSZemPq5QLVEQOWV2PVT2Bs3MJ9WKjwMoxu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  # {name: "sSue", role_id: 2, email: "su@e", encrypted_password: "$2a$11$vy5RB8kXUE1HRHZZOJ69O.1zjkTGF6UvdoD5ftWaP215len0c.rMe", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2016-05-30 19:58:58", last_sign_in_at: "2016-05-28 16:56:52", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1"},
  # {name: "sKev", role_id: 2, email: "k@e", encrypted_password: "$2a$11$hI4D71DBu3U0i/CIVSXz.elxR1CE4Jg30/ZXV6U7aOjHhT.Ql9MRm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  # {name: "admin", role_id: 3, email: "a@e", encrypted_password: "$2a$11$i.o8VgKn05Fw7GWgERWIP.h7//Ys5QUUBsiI04j15dRdR.mJFBzlq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 10, current_sign_in_at: "2016-06-02 18:11:41", last_sign_in_at: "2016-06-02 18:11:33", current_sign_in_ip: "10.4.10.161", last_sign_in_ip: "10.4.10.161"}
# ])


# === 620

PasengerList.create!([
  {clocknum: "123", name: "David Gleba", active: false},
  {clocknum: "124", name: "Deano", active: false},
  {clocknum: "125", name: "Joe", active: false},
  {clocknum: "525", name: "Pell Gotler", active: false},
  {clocknum: "625", name: "Ted Budly", active: false},
])

# Role.create!([
  # {name: "sc_regular", description: ""},
  # {name: "sc_seller", description: ""},
  # {name: "sc_admin", description: "Can perform any CRUD operation on any resource"}
# ])
# User.create!([
  # {name: "reg", email: "r", crypted_password: "a", salt: "sLLUAsz9ZZQBJRQFhJ32", role_id: 1},
  # {name: "admin", email: "a@e", crypted_password: "a", salt: "ZJWekpbdoueH96r9D8qS", role_id: 3},
  # {name: "admin", email: "a", crypted_password: "a", salt: "uiHnbcb1jUqsDdg9awHp", role_id: 3}
# ])

