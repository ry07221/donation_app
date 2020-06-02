class UserDonation
  include ActiveModel::Model
 
  attr_accessor :name, :name_reading. :nickname
  
  validates :name, presence: true
  validates :name_reading presence: true
  validates :nickname, presence: true
 
  def save
    Name.create(name: name)
    NameReading.create(name_reading: name_reading)
    Nickname.create(nickname: nickname)
  end
  
 end
 
