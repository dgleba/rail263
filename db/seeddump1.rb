
User.create!([
  {name: "admin", email: "a@e", crypted_password: nil, salt: nil, role_id: 3, encrypted_password: "$2a$11$Jt1zxFNLD2ire2BDvhZOe.ZVn7IZVh8YFGafdzxOOcTuQc7W.JVmi", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  {name: "admin", email: "a", crypted_password: nil, salt: nil, role_id: 3, encrypted_password: "$2a$11$pvt16uW25UdVuqmp1O9hNeIA7pqbfi2ON/mbY/bxK8UyP69VcqroS", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 3, current_sign_in_at: "2016-09-19 22:46:52", last_sign_in_at: "2016-09-19 21:52:34", current_sign_in_ip: "10.90.65.34", last_sign_in_ip: "10.90.65.34"},
  {name: "reg", email: "r", crypted_password: nil, salt: nil, role_id: 1, encrypted_password: "$2a$11$56gPKqn5rRNoVg89YskhyO5YMxa2iiNMAs./UfEAYjE8fkfZ.eLo6", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  {name: "sSue", email: "su@e", crypted_password: nil, salt: nil, role_id: 2, encrypted_password: "$2a$11$dKfsQRIJBy.6dD2dQjqK1uf1FVDGKkxi6.4jwTJi43GfiqxYFSgIq", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil},
  {name: "sKev", email: "k@e", crypted_password: nil, salt: nil, role_id: 2, encrypted_password: "$2a$11$mkWwfX8gVdEC7T7lqYOLwuvEj6yZ1tlEMF3DtOErwB0pONQkh2EAG", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil}
])
Customer.create!([
  {name: "Miss Brendon Larkin", address: "183 Katelin Rue", phone: "283-915-7313", discount: 0.1},
  {name: "Magali Gleichner", address: "394 Joan Bypass", phone: "477.083.1101 x9202", discount: 0.1},
  {name: "Dr. Stella Hauck", address: "271 Lockman Islands", phone: "1-542-780-3025 x993", discount: 0.2},
  {name: "Miss Israel Larson", address: "822 Aleen Camp", phone: "525-594-7162 x18954", discount: 0.15},
  {name: "Jeffery Dicki", address: "1259 Heaven Island", phone: "1-193-163-9447", discount: 0.0},
  {name: "Corene Willms", address: "167 Pagac Viaduct", phone: "(746) 587-1907 x0705", discount: 0.2},
  {name: "David Gleba", address: "462 Albert St.", phone: "5199494568", discount: nil},
  {name: "Kevin Jones", address: "2 Sunset boulevard", phone: "22222222", discount: 0.2},
  {name: "Kumar", address: "5 Serangoon Road", phone: "55555555", discount: 0.0},
  {name: "Mohammed Ali", address: "1 Kg Java", phone: "99999999", discount: 0.15},
  {name: "Tan Ah Teck", address: "8 Happy Ave", phone: "88888888", discount: 0.1}
])
PasengerList.create!([
  {clocknum: "123", name: "David Gleba", active: true},
  {clocknum: "124", name: "Deano", active: true},
  {clocknum: "125", name: "Joe", active: false},
  {clocknum: "525", name: "Pell Gotler", active: false},
  {clocknum: "625", name: "Ted Budly", active: false},
  {clocknum: "4339", name: "Briana Boyer", active: true},
  {clocknum: "3372", name: "Mr. Antonetta Flatley", active: true},
  {clocknum: "2818", name: "Jovanny Ortiz", active: false},
  {clocknum: "3880", name: "Hortense Cummerata DDS", active: false},
  {clocknum: "4487", name: "Carter Friesen", active: true},
  {clocknum: "3146", name: "Camren Mueller", active: true},
  {clocknum: "2959", name: "Queen Pacocha MD", active: false},
  {clocknum: "3906", name: "Myron Jast", active: false},
  {clocknum: "4742", name: "Mr. Michaela Zulauf", active: false},
  {clocknum: "2459", name: "Chanel Sawayn", active: true},
  {clocknum: "4194", name: "Vito Stokes I", active: true},
  {clocknum: "4671", name: "Leora Schoen", active: false},
  {clocknum: "2026", name: "Alexandrea Gerhold", active: false},
  {clocknum: "2311", name: "Estrella Collier", active: true},
  {clocknum: "3717", name: "Garrett Lubowitz", active: true},
  {clocknum: "3402", name: "Nannie Hegmann", active: false},
  {clocknum: "1911", name: "Orin Bernier DVM", active: true},
  {clocknum: "4422", name: "Jerald Considine PhD", active: true},
  {clocknum: "2507", name: "Verla Farrell", active: false},
  {clocknum: "1049", name: "Sylvester Parker", active: false},
  {clocknum: "4866", name: "Arnold Osinski", active: true},
  {clocknum: "973", name: "Moses Bahringer I", active: true},
  {clocknum: "1465", name: "Rylee Eichmann DDS", active: true},
  {clocknum: "1943", name: "Ms. Abbey Bergstrom", active: true}
])
Passenger.create!([
  {name: nil, description: nil, output: "[{\"lx\":89,\"ly\":32,\"mx\":89,\"my\":31},{\"lx\":89,\"ly\":33,\"mx\":89,\"my\":32},{\"lx\":90,\"ly\":34,\"mx\":89,\"my\":33},{\"lx\":94,\"ly\":39,\"mx\":90,\"my\":34},{\"lx\":101,\"ly\":45,\"mx\":94,\"my\":39},{\"lx\":111,\"ly\":52,\"mx\":101,\"my\":45},{\"lx\":121,\"ly\":56,\"mx\":111,\"my\":52},{\"lx\":127,\"ly\":58,\"mx\":121,\"my\":56},{\"lx\":128,\"ly\":58,\"mx\":127,\"my\":58}]", rental_record_id: 4, pasenger_list_id: 1},
  {name: nil, description: nil, output: nil, rental_record_id: 2, pasenger_list_id: 10},
  {name: nil, description: nil, output: nil, rental_record_id: 1, pasenger_list_id: 5},
  {name: nil, description: nil, output: nil, rental_record_id: 2, pasenger_list_id: 8},
  {name: nil, description: nil, output: nil, rental_record_id: 1, pasenger_list_id: 4},
  {name: nil, description: nil, output: nil, rental_record_id: 2, pasenger_list_id: 11},
  {name: nil, description: nil, output: nil, rental_record_id: 1, pasenger_list_id: 10},
  {name: nil, description: nil, output: nil, rental_record_id: 3, pasenger_list_id: 11},
  {name: nil, description: nil, output: nil, rental_record_id: 3, pasenger_list_id: 9},
  {name: nil, description: nil, output: nil, rental_record_id: 1, pasenger_list_id: 2},
  {name: nil, description: nil, output: "[{\"lx\":204,\"ly\":28,\"mx\":204,\"my\":27}]", rental_record_id: 4, pasenger_list_id: 6},
  {name: nil, description: nil, output: nil, rental_record_id: 1, pasenger_list_id: 3},
  {name: nil, description: nil, output: "[{\"lx\":61,\"ly\":59,\"mx\":61,\"my\":58}]", rental_record_id: 4, pasenger_list_id: 26}
])
RentalRecord.create!([
  {customer_id: 4, vehicle_id: 3, start_date: "2012-01-20", end_date: "2012-01-20", lastUpdated: "2016-09-19 22:10:00"},
  {customer_id: 3, vehicle_id: 3, start_date: "2012-01-05", end_date: "2012-01-05", lastUpdated: nil},
  {customer_id: 1, vehicle_id: 2, start_date: "2012-02-01", end_date: "2012-02-01", lastUpdated: nil},
  {customer_id: 1, vehicle_id: 1, start_date: "2012-01-01", end_date: "2012-01-01", lastUpdated: nil}
])
Role.create!([
  {name: "sc_regular", description: ""},
  {name: "sc_seller", description: ""},
  {name: "sc_admin", description: "Can perform any CRUD operation on any resource"}
])
Vehicle.create!([
  {veh_reg_no: "SBC3333C", category: "car", name: "HONDA CIVIC 1.8L", desc: "4 Door Saloon, Automatic", photo: nil, daily_rate: "119.99"},
  {veh_reg_no: "SBB2222B", category: "car", name: "TOYOTA ALTIS 1.6L", desc: "4 Door Saloon, Automatic", photo: nil, daily_rate: "99.99"},
  {veh_reg_no: "SBA1111A", category: "car", name: "NISSAN SUNNY 1.6L", desc: "4 Door Saloon, Automatic", photo: nil, daily_rate: "99.99"},
  {veh_reg_no: "GA6666F", category: "truck", name: "OPEL COMBO 1.6L", desc: "Van, Manual", photo: nil, daily_rate: "69.99"},
  {veh_reg_no: "GA5555E", category: "truck", name: "NISSAN CABSTAR 3.0L", desc: "Lorry, Manual ", photo: nil, daily_rate: "89.99"}
])
