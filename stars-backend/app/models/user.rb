class User < ApplicationRecord
  belongs_to :sign

  def birthday=(date)
    month_day = date.split('-').join().slice(4,4)
    date_int = ('2018'+month_day).to_i
    cap = Sign.all.find_by(name:'Capricorn')
    if date_int < cap.end || date_int > cap.start
      my_sign = cap
    else
      my_sign = Sign.all.find do |sign|
        sign.range === date_int
      end
    end
    self.sign = my_sign
  end
end
