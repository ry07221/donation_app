class User < ApplicationRecord
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "全角"}         
  validates :nickname, presence: true, format: { with: /\A[a-z0-9]+\z/i, message: "半角英数"}
  validates :first_name_reading, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "全角カタカナ"}
  validates :last_name_reading, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "全角カタカナ"}
         
end
