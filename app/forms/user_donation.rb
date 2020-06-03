class UserDonation
  include ActiveModel::Model
 
  attr_accessor :name, :name_reading, :nickname, :postal_code, :prefecture, :city, :house_number, :building_name, :price
  
  with_options presence: true do
    validates :name, :name_reading, :nickname, :price, :postal_code, :prefecture, presence: true
  end
 
  def save
    User.create(name: name, name_reading: name_reading, nickname: nickname)
    Address.create(postal_code: postal_code, prefecture: prefecture, city: city, house_number: house_number, building_name: building_name)
    Donation.create(price: price)
    # binding.pry
  end

 end
 
