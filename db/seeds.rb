Post.destroy_all
puts "Destroyed everything you touch"

posts = [
{
  name: "Филипп Киркоров",
	title: "Королевский стиль",
  characteristics: "#золото #яркий",
	brands: "#Chanel #Fendi",
	content: "чел супер классный стиль",
  image: File.open(Rails.root.join('public', 'images', 'Asap.jpg'))
},
{
  name: "ASAP Rocky",
	title: "Непредсказуемый и оригинальный стиль популярного рэпера",
  characteristics: "#оверсайз #яркий",
	brands: "#СK #Tommy",
	content: "хорош хорош",
  image: File.open(Rails.root.join('public', 'images', 'Asap.jpg'))

}
]

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
