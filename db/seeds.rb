Product.delete_all
User.delete_all

# email: "jeroen@knol.nl", password: "123456"
# email: "maja@podrug.nl", password: "123456"
# email: "stefan@kollaart.nl", postcode: "5678LO"
# email: "nick@winkelman.nl", password: "123456"


jeroen = Profile.create!({ first_name: "Jeroen", last_name: "Knol", street_housenr: "Example Lane 123", postcode: "1234AM", city: "Amsterdam", country: "The Netherlands"} )
maja = Profile.create!({ first_name: "Maja", last_name: "Podrug", street_housenr: "Fake Street 234", postcode: "3456NY", city: "New York", country: "United States of America"} )
stefan = Profile.create!({ first_name: "Stefan", last_name: "Kollaart", street_housenr: "Non Existend Road 345", postcode: "5678LO", city: "London", country: "United Kingdom"} )
nick = Profile.create!({ first_name: "Nick", last_name: "Winkelman", street_housenr: "Made Up Avenue 456", postcode: "7890PA", city: "Paris", country: "France"} )

product1 = Product.create!({ brand: "Votec", model: "MTB Hardtail Pro", image: "#", price: 1999, category: "mountainbike", gender: "unisex", frame: "45" })
product2 = Product.create!({ brand: "Haibike", model: "XDURO Hardseven", image: "#", price: 3999, category: "mountainbike", gender: "unisex", frame: "40" })
product3 = Product.create!({ brand: "Cube", model: "Elite C:62 Race", image: "#", price: 2999, category: "mountainbike", gender: "unisex", frame: "48" })
product4 = Product.create!({ brand: "Cube", model: "Aim Allroad", image: "#", price: 499, category: "mountainbike", gender: "unisex", frame: "46" })
product5 = Product.create!({ brand: "Serious", model: "Shoreline MTB Hardtail", image: "#", price: 749.99, category: "mountainbike", gender: "unisex", frame: "52" })
product6 = Product.create!({ brand: "Serious", model: "Rockaway MTB Hardtail", image: "#", price: 429.99, category: "mountainbike", gender: "unisex", frame: "50" })

product7 = Product.create!({ brand: "Vermont", model: "Sapphire", image: "#", price: 499, category: "citybike", gender: "female", frame: "45" })
product8 = Product.create!({ brand: "Vermont", model: "Rosedale", image: "#", price: 459, category: "citybike", gender: "female", frame: "50" })
product9 = Product.create!({ brand: "Ortler", model: "Monet", image: "#", price: 599, category: "citybike", gender: "male", frame: "56" })
product10 = Product.create!({ brand: "Ortler", model: "Van Dyck Grannybike", image: "#", price: 479.99, category: "citybike", gender: "female", frame: "48" })
product11 = Product.create!({ brand: "Vermont", model: "Jersey", image: "#", price: 549, category: "citybike", gender: "female", frame: "45" })
product12 = Product.create!({ brand: "Creme", model: "Caferacer Solo", image: "#", price: 769, category: "citybike", gender: "male", frame: "54" })

product13 = Product.create!({ brand: "Vermont", model: "E-Jersey", image: "#", price: 1399, category: "ebike", gender: "unisex", frame: "50" })
product14 = Product.create!({ brand: "Sinus", model: "ENA7", image: "#", price: 2799, category: "ebike", gender: "female", frame: "46" })
product15 = Product.create!({ brand: "Hawk", model: "Green Energy", image: "#", price: 1199, category: "ebike", gender: "female", frame: "44" })
product16 = Product.create!({ brand: "Electra", model: "Townie Go!", image: "#", price: 2699, category: "ebike", gender: "female", frame: "46" })
product17 = Product.create!({ brand: "Cube", model: "Touring Hybrid One", image: "#", price: 1899, category: "ebike", gender: "male", frame: "52" })
product18 = Product.create!({ brand: "Focus", model: "Jarifa Street Pro", image: "#", price: 3999, category: "ebike", gender: "male", frame: "50" })

product19 = Product.create!({ brand: "Serious", model: "Grafix", image: "#", price: 1599, category: "racebike", gender: "unisex", frame: "52" })
product20 = Product.create!({ brand: "Liv", model: "Avail Advanced Pro", image: "#", price: 3199, category: "racebike", gender: "female", frame: "46" })
product21 = Product.create!({ brand: "Cube", model: "Cross Race SL", image: "#", price: 1699, category: "racebike", gender: "male", frame: "56" })
product22 = Product.create!({ brand: "Cube", model: "Attain SL", image: "#", price: 1199, category: "racebike", gender: "male", frame: "56" })
product23 = Product.create!({ brand: "Serious", model: "Grafix Cyclocross", image: "#", price: 1299, category: "racebike", gender: "unisex", frame: "48" })
product24 = Product.create!({ brand: "Votec", model: "VRD Racebike", image: "#", price: 1499, category: "racebike", gender: "unisex", frame: "50" })
