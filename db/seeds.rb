#To make fresh models when we run rails db:seed
Airport.delete_all
Flight.delete_all

Airport.create!([{
  code_name: "ATL",
  city_name: "Atlanta",
},
{
  code_name: "DFW",
  city_name: "Dallas-Fort Worth",
},
{
  code_name: "DEN",
  city_name: "Denver",
},
{
  code_name: "ORD",
  city_name: "Chicago",
},
{
  code_name: "LAX",
  city_name: "Los Angeles",
},
{
  code_name: "CLT",
  city_name: "Charlotte",
},
{
  code_name: "MCO",
  city_name: "Orlando",
},
{
  code_name: "CAN",
  city_name: "Baiyun-Huadu",
},
{
  code_name: "CTU",
  city_name: "Shuangliu-Wuhou",
},
{
  code_name: "LAS",
  city_name: "Las Vegas",
},
{
  code_name: "PHX",
  city_name: "Pheonix",
},
{
  code_name: "MIA",
  city_name: "Miami-Dade County",
},
{
  code_name: "DEL",
  city_name: "Delhi",
},
{
  code_name: "IST",
  city_name: "Istanbul",
},
{
  code_name: "SZX",
  city_name: "Bao'an",
}
])

Flight.create!([{
  duration: "2h30m",
  departure_time: Time.now + 1.day,
  arrival_airport_id: 3,
  departure_airport_id: 4,
},
{
  duration: "5h",
  departure_time: Time.now + 2.days,
  arrival_airport_id: 4,
  departure_airport_id: 5,
},
{
  duration: "4h",
  departure_time: Time.now + 3.days,
  arrival_airport_id: 5,
  departure_airport_id: 6,
},
{
  duration: "1h25m",
  departure_time: Time.now + 4.days,
  arrival_airport_id: 6,
  departure_airport_id: 7,
},
{
  duration: "6h30m",
  departure_time: Time.now + 5.days,
  arrival_airport_id: 8,
  departure_airport_id: 9,
},
{
  duration: "18h",
  departure_time: Time.now + 6.days,
  arrival_airport_id: 9,
  departure_airport_id: 10,
},
{
  duration: "21h25m",
  departure_time: Time.now + 7.days,
  arrival_airport_id: 10,
  departure_airport_id: 11,
},
{
  duration: "2h",
  departure_time: Time.now + 8.days,
  arrival_airport_id: 11,
  departure_airport_id: 12,
},
{
  duration: "1h20m",
  departure_time: Time.now + 9.days,
  arrival_airport_id: 12,
  departure_airport_id: 13,
},
{
  duration: "19h45m",
  departure_time: Time.now + 10.days,
  arrival_airport_id: 13,
  departure_airport_id: 14,
},
{
  duration: "8h",
  departure_time: Time.now + 11.days,
  arrival_airport_id: 14,
  departure_airport_id: 15,
},
{
  duration: "10h",
  departure_time: Time.now + 12.days,
  arrival_airport_id: 15,
  departure_airport_id: 16,
},
]
)


