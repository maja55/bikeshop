Photo.delete_all
Product.delete_all
Profile.delete_all
User.delete_all

# email: "jeroen@knol.nl", password: "123456"
# email: "maja@podrug.nl", password: "123456"
# email: "stefan@kollaart.nl", postcode: "5678LO"
# email: "nick@winkelman.nl", password: "123456"


jeroen = Profile.create!({ first_name: "Jeroen", last_name: "Knol", street_housenr: "Example Lane 123", postcode: "1234AM", city: "Amsterdam", country: "The Netherlands"} )
maja = Profile.create!({ first_name: "Maja", last_name: "Podrug", street_housenr: "Fake Street 234", postcode: "3456NY", city: "New York", country: "United States of America"} )
stefan = Profile.create!({ first_name: "Stefan", last_name: "Kollaart", street_housenr: "Non Existend Road 345", postcode: "5678LO", city: "London", country: "United Kingdom"} )
nick = Profile.create!({ first_name: "Nick", last_name: "Winkelman", street_housenr: "Made Up Avenue 456", postcode: "7890PA", city: "Paris", country: "France"} )

photo1 = Photo.create(remote_image_url:"http://res.cloudinary.com/maja55/image/upload/v1484848970/1_im62ga.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848966/2_mzf0ja.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848969/3_gxx9m2.jpg")
photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848969/4_ry0tbh.jpg")
photo5 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848966/5_xtbpsr.jpg")
photo6 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848966/6_rdn5w2.jpg")

photo7 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848970/7_mk39hn.jpg")
photo8 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848971/8_zznxnm.jpg")
photo9 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848970/9_rhxkni.jpg")
photo10 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848967/10_vpfnz0.jpg")
photo11 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848975/11_gfzpz4.jpg")
photo12 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848966/12_uavk8t.jpg")

photo13 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848969/13_puqasu.jpg")
photo14 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848967/14_scrf29.jpg")
photo15 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848971/15_etmp9s.jpg")
photo16 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848968/16_g28fbr.jpg")
photo17 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848967/17_diz2eb.jpg")
photo18 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848992/18_mszz6g.jpg")

photo19 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848966/19_pzevuz.jpg")
photo20 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848966/20_trpssc.jpg")
photo21 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848967/21_i2sgqz.jpg")
photo22 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848966/22_oghokd.jpg")
photo23 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848967/23_fus3qt.jpg")
photo24 = Photo.create(remote_image_url: "http://res.cloudinary.com/maja55/image/upload/v1484848968/24_c6fbjm.jpg")

product1 = Product.create!({ photos: [photo1], brand: "Votec", model: "MTB Hardtail Pro", price: 1999, category: "mountainbike", gender: "unisex", frame: "45"})
product2 = Product.create!({ photos: [photo2], brand: "Haibike", model: "XDURO Hardseven", price: 3999, category: "mountainbike", gender: "unisex", frame: "40" })
product3 = Product.create!({ photos: [photo3], brand: "Cube", model: "Elite C:62 Race", price: 2999, category: "mountainbike", gender: "unisex", frame: "48" })
product4 = Product.create!({ photos: [photo4], brand: "Cube", model: "Aim Allroad", price: 499, category: "mountainbike", gender: "unisex", frame: "46" })
product5 = Product.create!({ photos: [photo5], brand: "Serious", model: "Shoreline MTB Hardtail", price: 749.99, category: "mountainbike", gender: "unisex", frame: "52" })
product6 = Product.create!({ photos: [photo6], brand: "Serious", model: "Rockaway MTB Hardtail", price: 429.99, category: "mountainbike", gender: "unisex", frame: "50" })

product7 = Product.create!({ photos: [photo7], brand: "Vermont", model: "Sapphire", price: 499, category: "citybike", gender: "female", frame: "45" })
product8 = Product.create!({ photos: [photo8], brand: "Vermont", model: "Rosedale", price: 459, category: "citybike", gender: "female", frame: "50" })
product9 = Product.create!({ photos: [photo9], brand: "Ortler", model: "Monet", price: 599, category: "citybike", gender: "male", frame: "56" })
product10 = Product.create!({ photos: [photo10], brand: "Ortler", model: "Van Dyck Grannybike", price: 479.99, category: "citybike", gender: "female", frame: "48" })
product11 = Product.create!({ photos: [photo11], brand: "Vermont", model: "Jersey", price: 549, category: "citybike", gender: "female", frame: "45" })
product12 = Product.create!({ photos: [photo12], brand: "Creme", model: "Caferacer Solo", price: 769, category: "citybike", gender: "male", frame: "54" })

product13 = Product.create!({ photos: [photo13], brand: "Vermont", model: "E-Jersey", price: 1399, category: "ebike", gender: "unisex", frame: "50" })
product14 = Product.create!({ photos: [photo14], brand: "Sinus", model: "ENA7", price: 2799, category: "ebike", gender: "female", frame: "46" })
product15 = Product.create!({ photos: [photo15], brand: "Hawk", model: "Green Energy", price: 1199, category: "ebike", gender: "female", frame: "44" })
product16 = Product.create!({ photos: [photo16], brand: "Electra", model: "Townie Go!", price: 2699, category: "ebike", gender: "female", frame: "46" })
product17 = Product.create!({ photos: [photo17], brand: "Cube", model: "Touring Hybrid One", price: 1899, category: "ebike", gender: "male", frame: "52" })
product18 = Product.create!({ photos: [photo18], brand: "Focus", model: "Jarifa Street Pro", price: 3999, category: "ebike", gender: "male", frame: "50" })

product19 = Product.create!({ photos: [photo19], brand: "Serious", model: "Grafix", price: 1599, category: "racebike", gender: "unisex", frame: "52" })
product20 = Product.create!({ photos: [photo20], brand: "Liv", model: "Avail Advanced Pro", price: 3199, category: "racebike", gender: "female", frame: "46" })
product21 = Product.create!({ photos: [photo21], brand: "Cube", model: "Cross Race SL", price: 1699, category: "racebike", gender: "male", frame: "56" })
product22 = Product.create!({ photos: [photo22], brand: "Cube", model: "Attain SL", price: 1199, category: "racebike", gender: "male", frame: "56" })
product23 = Product.create!({ photos: [photo23], brand: "Serious", model: "Grafix Cyclocross", price: 1299, category: "racebike", gender: "unisex", frame: "48" })
product24 = Product.create!({ photos: [photo24], brand: "Votec", model: "VRD Racebike", price: 1499, category: "racebike", gender: "unisex", frame: "50" })
