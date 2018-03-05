# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Sign.destroy_all
User.destroy_all
Sign.destroy_all

Sign.create(name:'Aries', start:20180321, end:20180419, description:'
Adventurous and energetic<br>
Pioneering and courageous<br>
Enthusiastic and confident<br>
Dynamic and quick-witted<br>

Selfish and quick-tempered<br>
Impulsive and impatient<br>
Foolhardy and daredevil', img_url: 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Aries.svg')
Sign.create(name:'Taurus', start:20180420, end:20180520, description:'Patient and reliable<br>
Warmhearted and loving<br>
Persistent and determined<br>
Placid and security loving<br>

Jealous and possessive<br>
Resentful and inflexible<br>
Self-indulgent and greedy', img_url:'https://upload.wikimedia.org/wikipedia/commons/3/3a/Taurus.svg')
Sign.create(name:'Gemini', start:20180521, end:20180620, description:'Adaptable and versatile<br>
Communicative and witty<br>
Intellectual and eloquent<br>
Youthful and lively<br>

Nervous and tense<br>
Superficial and inconsistent<br>
Cunning and inquisitive ', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/1/15/Gemini.svg/200px-Gemini.svg.png')
Sign.create(name:'Cancer', start:20180621, end:20180722, description:'Emotional and loving<br>
Intuitive and imaginative<br>
Shrewd and cautious<br>
Protective and sympathetic<br>

Changeable and moody<br>
Overemotional and touchy<br>
Clinging and unable to let go', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Cancer.svg/200px-Cancer.svg.png')
Sign.create(name:'Leo', start:20180723, end:20180822, description:'Generous and warmhearted<br>
Creative and enthusiastic<br>
Broad-minded and expansive<br>
Faithful and loving<br>

Pompous and patronizing<br>
Bossy and interfering<br>
Dogmatic and intolerant ', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Leo.svg/200px-Leo.svg.png')
Sign.create(name:'Virgo',  start:20180823, end:20180922, description:'Modest and shy<br>
Meticulous and reliable<br>
Practical and diligent<br>
Intelligent and analytical<br>

Fussy and a worrier<br>
Overcritical and harsh<br>
Perfectionist and conservative', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Virgo.svg/200px-Virgo.svg.png')
Sign.create(name:'Libra',  start:20180923, end:20181022, description:'Diplomatic and urbane<br>
Romantic and charming<br>
Easygoing and sociable<br>
Idealistic and peaceable<br>

Indecisive and changeable<br>
Gullible and easily influenced<br>
Flirtatious and self-indulgent', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/Libra.svg/200px-Libra.svg.png')
Sign.create(name:'Scorpio', start:20181023, end:20181121, description:'Determined and forceful<br>
Emotional and intuitive<br>
Powerful and passionate<br>
Exciting and magnetic<br>

Jealous and resentful<br>
Compulsive and obsessive<br>
Secretive and obstinate', img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ea/Scorpio.svg/200px-Scorpio.svg.png')
Sign.create(name:'Sagittarius', start:20181122, end:20181221, description:'Optimistic and freedom-loving<br>
Jovial and good-humored<br>
Honest and straightforward<br>
Intellectual and philosophical<br>

Blindly optimistic and careless<br>
Irresponsible and superficial<br>
Tactless and restless', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/Sagittarius.svg/200px-Sagittarius.svg.png')
Sign.create(name:'Capricorn', start:20181222, end:20180119, description:'Practical and prudent<br>
Ambitious and disciplined<br>
Patient and careful<br>
Humorous and reserved<br>

Pessimistic and fatalistic<br>
Miserly and grudging', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Capricorn.svg/200px-Capricorn.svg.png')
Sign.create(name:'Aquarius', start:20180120, end:20180218, description:'Friendly and humanitarian<br>
Honest and loyal<br>
Original and inventive<br>
Independent and intellectual<br>

Intractable and contrary<br>
Perverse and unpredictable<br>
Unemotional and detached', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Aquarius.svg/200px-Aquarius.svg.png')
Sign.create(name:'Pisces', start:20180219, end:20180320, description:'Imaginative and sensitive<br>
Compassionate and kind<br>
Selfless and unworldly<br>
Intuitive and sympathetic<br>

Escapist and idealistic<br>
Secretive and vague<br>
Weak-willed and easily led', img_url:'https://upload.wikimedia.org/wikipedia/commons/thumb/9/95/Pisces.svg/200px-Pisces.svg.png')

15.times do
  name = Faker::Name.first_name
  birthday = Faker::Date.between(Date.new(2018,01,01), Date.new(2018,12,31))
  int_date = birthday.strftime('%Y-%m-%d')
  User.create(name:name, birthday:int_date)
end
