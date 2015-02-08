class Property < ActiveRecord::Base
  self.inheritance_column = "kind"

  TYPES = %w| Apartment Room Condo House | 
  
  CITIES =["Cebu City",
    "Lapu-Lapu City",
    "Mandaue City",
    "Carcar City",
    "Danao City",
    "Bogo City",
    "Talisay City",
    "Naga City"]

  BEDROOMS =[
    ["Studio Type", 0],
    ["1 BR", 1],
    ["2 BR", 2],
    ["3 BR", 3],
    ["4+ BR", 4]]

  BATHROOMS =[
    ["1 BR", 1],
    ["2 BR", 2],
    ["3 BR", 3],
    ["4+ BR", 4],
    ["Shared", -1],
  ]
 end
