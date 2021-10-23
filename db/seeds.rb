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
  image: File.open(Rails.root.join('public', 'images', 'Asap.jpg')),
  fpic: File.open(Rails.root.join('public', 'images', 'Asap1.jpg')),
  spic: File.open(Rails.root.join('public', 'images', 'Asap2.jpg')),
  tpic: File.open(Rails.root.join('public', 'images', 'Asap3.jpg')),
  lpic: File.open(Rails.root.join('public', 'images', 'Asap4.jpg')),
},
{
  name: "David Bowie",
	title: "Икона стиля, оказавшая огромное влияние на современную моду",
  characteristics: "#унисекс #яркий #каблуки #блеск #комбинезоны #классика",
	brands: "#AlexanderMcQueen #KansaiYamamoto",
  filterTag: "легенды",
  country: "зарубежные",
	content: "Несмотря на то, что на моду оказывали большое влияние многие культурные деятели, никто не смог превзойти наследие Дэвида Боуи. О его значимости говорят такие культовые дизайнеры, как Жан-Поль Готье и Эди Слиман. Его эстетика является, пожалуй, одной из самых важных в стиле второй половины XX века. Стиль Боуи выходил за пределы гендера. На протяжении всей своей карьеры он так или иначе разрушал границы между мужественностью и женственностью, создавая свой индивидуальный стиль. Дэвид Боуи менял свой образ, воплощая разных героев. В начале карьеры его наряды были минималистичными и состояли из пиджаков на трех пуговицах, повседневных рубашек и узких галстуков.
Затем он перевоплатился в Зигги Стардаста — отрастил волосы, предпочитал женскую одежду, приталенный пошив и яркий макияж. В середине 70-х Боуи представил своего нового героя – «Тощего Белого Герцога». Отойдя от блестящих комбинезонов, Герцог носил белые рубашки, приталенные жилеты и строгие брюки, зачесанные назад волосы и сдержанный макияж.",
  image: File.open(Rails.root.join('public', 'images', 'Bowie.jpg')),
  fpic: File.open(Rails.root.join('public', 'images', 'Bowie1.jpg')),
  spic: File.open(Rails.root.join('public', 'images', 'Bowie2.jpg')),
  tpic: File.open(Rails.root.join('public', 'images', 'Bowie3.jpg')),
  lpic: File.open(Rails.root.join('public', 'images', 'Bowie4.jpg')),
},
{
  name: "Nicki Minaj",
	title: "Эпатаж и своеобразие: яркие образы рэп–дивы",
  characteristics: "#латекс #парики #мини #highheels #экстравагантное #яркий",
	brands: "#Chanel #RobertoCavalli #Versace",
  filterTag: "креативные",
  country: "зарубежные",
	content: "Ники Минаж – известная эпатажная певица с индийскими, африканскими, и китайскими корнями. Она всегда броская и разнообразная. Несмотря на то, что стиль девушки часто менялся, он всегда, такой как сама Ники – яркий и своеобразный. Излюбленные приемы в макияже Минаж — стрелки и накладные ресницы. В одном из интервью певица призналась, что уже забыла, как выглядят ее волосы. Сотни перекрашиваний и коллекция париков закрепили за девушкой статус королевы причесок. Кажется, одежда, заменяющая нижнее белье, занимает половину гардероба рэп-дивы. Она носит кружевные комбинезоны на голое тело, кроп-топы, прозрачные боди и цветные пуш-ап бюстгальтеры вкупе с узкими брюками. На красной дорожке Минаж появляется в платьях ядовитых расцветок или глубоко черном, но обязательно очень коротком и облегающим. Дополняется образ высокими каблуками и множеством украшений, как золотых, так и забавных пластмассовых.",
  image: File.open(Rails.root.join('public', 'images', 'Nicki.jpg')),
  fpic: File.open(Rails.root.join('public', 'images', 'Nicki1.jpg')),
  spic: File.open(Rails.root.join('public', 'images', 'Nicki2.jpg')),
  tpic: File.open(Rails.root.join('public', 'images', 'Nicki3.jpg')),
  lpic: File.open(Rails.root.join('public', 'images', 'Nicki4.jpg')),
},
{
  name: "Ariana Grande",
	title: "Кукольный образ сладкой поп–певицы",
  characteristics: "#оверсайз #конскийхвост #яркий #милый #пышное #highheels",
	brands: "#Versace #Giambattista Valli #Vera Wang",
  filterTag: "поп",
  country: "зарубежные",
	content: "Стиль Арианы Гранде в ее 27 лет весьма узнаваем —  многие вещи, которые знаменитость привносит в свой гардероб, желают иметь тысячи поклонников по всему миру. Ариана Гранде чувствует себя на торжественных мероприятиях в своей тарелке. Певица обожает надевать на ковровую дорожку платья в стиле принцессы – с драпировками, воланами, рюшами и оборками ярких или нюдовых цветов. Иногда она выбирает и короткие платья в стиле куколки. Еще один идеальный дуэт одежды для торжественных мероприятий: стильный кроп-топ и широкие брюки – в таком образе Ариана Гранде не раз появлялась на премиях. Ариана не заботится о трендах в украшениях. Она всегда остается верна своему стилю: крупные банты и эффектные ленты в волосах, собранных в любимую прическу «конский хвост». В коллекции Арианы Гранде много ботфортов: от замшевых до бархатных моделей. С помощью этой эффектной обуви певица, видимо, компенсирует свой небольшой рост. В повседневной жизни она часто сочетает их со свитшотами и толстовками оверсайз, которые зааменяют ей платье.",
  image: File.open(Rails.root.join('public', 'images', 'Ariana.jpg')),
  fpic: File.open(Rails.root.join('public', 'images', 'Ariana1.jpg')),
  spic: File.open(Rails.root.join('public', 'images', 'Ariana2.jpg')),
  tpic: File.open(Rails.root.join('public', 'images', 'Ariana3.jpg')),
  lpic: File.open(Rails.root.join('public', 'images', 'Ariana4.jpg')),
}
]

posts.each do |post|
	postik = Post.create(post)
	puts "Some magic just create a #{ postik.name } with id #{ postik.id }!"
end
