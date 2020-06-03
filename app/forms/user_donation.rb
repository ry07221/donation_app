class UserDonation
  include ActiveModel::Model
 
  attr_accessor :name, :name_reading, :nickname, :postal_code, :prefecture, :city, :house_number, :building_name, :price
  
  with_options presence: true do
    validates :name, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}
    validates :name_reading, format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力して下さい。"}
    validates :nickname, format: { with: /\A[a-z0-9]+\z/i, message: "は半角英数で入力してください。"}
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, messgage: "「-」も入力してください"}
    validates :prefecture
    validates :price, format: {with: /\A[0-9]+\z/, message: "半角数字で入力してください"}
  end
 
  def save
    user = User.create(name: name, name_reading: name_reading, nickname: nickname)
    Address.create(postal_code: postal_code, prefecture: prefecture, city: city, house_number: house_number, building_name: building_name, user_id: user.id)
    Donation.create(price: price, user_id: user.id)
  end

end
 
