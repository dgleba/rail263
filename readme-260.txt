
#rails g scaffold RentalRecord customer:references start_date:date end_date:date --no-migration -f
#rails g scaffold Customer clocknum:string phone:string --no-migration -f

rails g scaffold PasengerList clocknum:string name:string active:boolean   -f
rails g scaffold Passenger name:string description:string output:text rental_record:belongs_to pasenger_list:references -f

rails generate scaffold Customer name:string address:string phone:string discount:float -f
rails generate scaffold Vehicle veh_reg_no:string category:string name:string desc:string photo:binary daily_rate:decimal -f
rails generate scaffold RentalRecord customer:references vehicle:references start_date:date end_date:date lastUpdated:datetime   -f

employee table comes from elsewhere. I don't control it. It has the name of the employee




