Post.destroy_all
puts "Destroyed everything you touch"

posts = [
{
  name: "A$AP Rocky",
	title: "Непредсказуемый и оригинальный стиль популярного рэпера",
  characteristics: "#оверсайз #дутые куртки #эксперименты #деним #тату #косички #яркий",
	brands: "#Gucci #Balenciaga #Calvin Klein #Prada",
  filterTag: "рэп",
  country: "зарубежные",
	content: "Часто непредсказуемый, оригинальный, сложный, многослойный и порой эксцентричный – стиль A$AP Rocky не из тех, который можно легко понять. Но A$AP давно заслужил уважение как у модных экспертов, так и простых зрителей. A$AP умеет плавно переходить от уличной одежды к моделям уровня кутюр. Его любимые вещи варьируются от университетских курток до льняных костюмов и дизайнерских пальто. Но то, чего в его гардеробе практически не встретишь – это мешковатая одежда, которая была модна среди хип–хоп артистов 1990-х. Ракима нередко можно встретить в классической черной двойке. Чаще всего он не надевает галстук, но любит обращаться к другим аксессуарам: от украшений до платков. От громоздких пуховиков Balenciaga до элегантно сшитых пальто – Майерс часто строит свой образ вокруг верхней одежды. Особенно искусно Раким сочетает шубы с простыми вещами.",
  image: File.open(Rails.root.join('public', 'images', 'Asap.jpg'))
},
{
  name: "ASAP Rocky",
	title: "Непредсказуемый и оригинальный стиль популярного рэпера",
  characteristics: "#оверсайз #яркий",
	brands: "#СK #Tommy",
	content: "хорош хорош",
  image: File.open(Rails.root.join('public', 'images', 'Asap.jpg'))

},
{
  name: "ASAP Rocky",
	title: "Непредсказуемый и оригинальный стиль популярного рэпера",
  characteristics: "#оверсайз #яркий",
	brands: "#СK #Tommy",
	content: "хорош хорош",
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
