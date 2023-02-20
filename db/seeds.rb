#To make fresh models when we run rake db:seed
# Airport.delete_all
# Flight.delete_all

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


