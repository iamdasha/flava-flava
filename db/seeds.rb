# Artist.destroy_all
# Post.destroy_all
# Collection.destroy_all
# Cloth.destroy_all
# Filtertag.destroy_all
Brand.destroy_all
# Look.destroy_all
puts "Destroyed everything you touch"

brands = [
{
	id: "1",
  name: "Gucci",
	link: "https://www.gucci.com/int/ru/",
	user_id: "1"
},
{
  id: "2",
  name: "Balenciaga",
	link: "https://www.balenciaga.com/en-us",
	user_id: "1"
}
]

collections = [
{
	id: "1",
  name: "Русские рэперы",
	cover: File.open(Rails.root.join('public', 'images', 'collect_rap.png')),
  user_id: "1",
  description: 'Русский рэп давно стал самостоятельной субкультурой. Есть танцевальный формат, есть поэтический. Появился "умный рэп", в котором авторы поднимают политические или социальные проблемы.'
},
{
  id: "2",
  name: "Легенды рока",
	cover: File.open(Rails.root.join('public', 'images', 'collect_rock.png')),
  user_id: "1",
  description: 'Русский рэп давно стал самостоятельной субкультурой. Есть танцевальный формат, есть поэтический. Появился "умный рэп", в котором авторы поднимают политические или социальные проблемы.'
},
{
  id: "3",
  name: "Хип-хоп",
	cover: File.open(Rails.root.join('public', 'images', 'collect_hop.png')),
  user_id: "1",
  description: 'Русский рэп давно стал самостоятельной субкультурой. Есть танцевальный формат, есть поэтический. Появился "умный рэп", в котором авторы поднимают политические или социальные проблемы.'
}
]

filtertags = [
{
	id: "1",
  name: "Лайфстайл",
	display_in_navbar: 'true',
  user_id: "1"
},
{
  id: "2",
  name: "Концерты",
	display_in_navbar: 'true',
  user_id: "1"
},
{
  id: "3",
  name: "Выходы",
	display_in_navbar: 'true',
  user_id: "1"
},
{
  id: "4",
  name: "Тренды",
	display_in_navbar: 'true',
  user_id: "1"
},
{
  id: "5",
  name: "Эксперименты",
	display_in_navbar: 'true',
  user_id: "1"
}
]

artists = [
{
	id: "1",
  name: "Dua Lipa",
	sex: "женский",
	age: "22",
	artistphoto: File.open(Rails.root.join('public', 'images', 'artist_dualipa.png')),
  genre: "поп",
  instagram: "https://www.balenciaga.com/en-us",
  youtube: "https://www.balenciaga.com/en-us",
  spotify: "https://www.balenciaga.com/en-us",
  brand_id: "1",
  user_id: "1",
  collection_id: "1",
  style: "кэжуал",
  wiki: "https://www.balenciaga.com/en-us"
},
{
  id: "2",
  name: "A$ap Rocky",
	sex: "мужской",
	age: "30",
	artistphoto: File.open(Rails.root.join('public', 'images', 'artist_asap.png')),
  genre: "хип-хоп",
  instagram: "https://www.balenciaga.com/en-us",
  youtube: "https://www.balenciaga.com/en-us",
  spotify: "https://www.balenciaga.com/en-us",
  brand_id: "1",
  user_id: "1",
  collection_id: "1",
  style: "кэжуал",
  wiki: "https://www.balenciaga.com/en-us"
}
]

posts = [
{
	id: "1",
  title: "Как собрать модный образ в стиле кют-рок: показывает певица Дора на собственном примере и с использованием гаечного ключа",
	content: "",
  postcover: "",
  fimage: File.open(Rails.root.join('public', 'images', 'post1.png')),
  simage: "",
  timage: "",
  artist_id: "1",
  user_id: "1",
  collection_id: "1",
  filtertag_id: "4"
},
{
  id: "2",
  title: "Стиль семилетнего цбшника — смотрим внимательно",
	content: "",
  postcover: "",
  fimage: File.open(Rails.root.join('public', 'images', 'post2.png')),
  simage: "",
  timage: "",
  artist_id: "1",
  user_id: "1",
  collection_id: "1",
  filtertag_id: "1"
},
{
  id: "3",
  title: "Солянка из образов солиста Ramones ",
	content: "",
  postcover: "",
  fimage: File.open(Rails.root.join('public', 'images', 'post3.png')),
  simage: "",
  timage: "",
  artist_id: "1",
  user_id: "1",
  collection_id: "1",
  filtertag_id: "1"
},
{
  id: "4",
  title: "Моргенштерн и его новая коллекция одежды",
	content: "",
  postcover: "",
  fimage: File.open(Rails.root.join('public', 'images', 'post4.png')),
  simage: "",
  timage: "",
  artist_id: "1",
  user_id: "1",
  collection_id: "1",
  filtertag_id: "1"
},
{
  id: "5",
  title: "Любовь к советскому прошлому в костюмах СБПЧ",
	content: "",
  postcover: "",
  fimage: File.open(Rails.root.join('public', 'images', 'post5.png')),
  simage: "",
  timage: "",
  artist_id: "1",
  user_id: "1",
  collection_id: "1",
  filtertag_id: "1"
},
{
  id: "6",
  title: "Дуа Липа и её любовь к цветочным костюмам",
	content: "",
  postcover: "",
  fimage: File.open(Rails.root.join('public', 'images', 'post6.png')),
  simage: "",
  timage: "",
  artist_id: "1",
  user_id: "1",
  collection_id: "1",
  filtertag_id: "1"
},
{
  id: "7",
  title: "Nike Run x MPFC, который носит A$AP Ferg на вечеринках Нью-Йорка",
	content: "",
  postcover: "",
  fimage: File.open(Rails.root.join('public', 'images', 'post7.png')),
  simage: "",
  timage: "",
  artist_id: "1",
  user_id: "1",
  collection_id: "1",
  filtertag_id: "1"
},
{
  id: "8",
  title: "Король преппи",
	content: "Почти в каждой трансформации стиля Тайлера неизменно присутствовали нотки преппи – традиционного американского стиля высших учебных заведений. ",
  postcover: "",
  fimage: File.open(Rails.root.join('public', 'images', 'post8.png')),
  simage: "",
  timage: "",
  artist_id: "2",
  user_id: "1",
  collection_id: "3",
  filtertag_id: "4"
}
]

looks = [
{
	id: "1",
  title: "Ким Кардашьян и её невероятный образ на общемировом событии Met Gala 2021 в Москве",
	content: "В этом образе певица гармонично сочетает разную по фактуре кожу и добавляет яркий акцент в виде зелёного плаща, что делает образ уникальным и незабываемым",
  image: File.open(Rails.root.join('public', 'images', 'look1.png')),
  artist_id: "1",
  filtertag_id: "1",
  post_id: "1"
},
{
  id: "2",
  title: "Тотал пинк от Джастина Бибера",
	content: "В этом образе певица гармонично сочетает разную по фактуре кожу и добавляет яркий акцент в виде зелёного плаща, что делает образ уникальным и незабываемым",
  image: File.open(Rails.root.join('public', 'images', 'look2.png')),
  artist_id: "1",
  filtertag_id: "1",
  post_id: "1"
}
]

cloths = [
{
	id: "1",
  name: "Платье черное из парусины Desigual",
	clothimage: File.open(Rails.root.join('public', 'images', 'cloth1.png')),
	link: "https://www.balenciaga.com/en-us",
  user_id: "1",
  brand_id: "1",
  look_id: "1"
},
{
  id: "2",
  name: "Кожаное зеленое пальто Chanel",
	clothimage: File.open(Rails.root.join('public', 'images', 'cloth2.png')),
	link: "https://www.balenciaga.com/en-us",
  user_id: "1",
  brand_id: "1",
  look_id: "1"
}
]

brands.each do |brand|
	brandik = Brand.create(brand)
	puts "Some magic just create a #{ brandik.name } with id #{ brandik.id }!"
end

collections.each do |collection|
	collectionik = Collection.create(collection)
	puts "Some magic just create a #{ collectionik.name } with id #{ collectionik.id }!"
end

filtertags.each do |filtertag|
	filtertagik = Filtertag.create(filtertag)
	puts "Some magic just create a #{ filtertagik.name } with id #{ filtertagik.id }!"
end

artists.each do |artist|
	artistik = Artist.create(artist)
	puts "Some magic just create a #{ artistik.name } with id #{ artistik.id }!"
end

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.title } with id #{ postik.id }!"
end

looks.each do |look|
	lookik = Look.create(look)
	puts "Some magic just create a #{ lookik.title } with id #{ lookik.id }!"
end

cloths.each do |cloth|
	clothik = Cloth.create(cloth)
	puts "Some magic just create a #{ clothik.name } with id #{ clothik.id }!"
end
