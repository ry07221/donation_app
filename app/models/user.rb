class User < ApplicationRecord
  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address
 
  validates :name, presence: true, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "は全角で入力してください。"}         
  validates :name_reading, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: "は全角カタカナで入力して下さい。"}
  validates :nickname, presence: true, format: { with: /\A[a-z0-9]+\z/i, message: "は半角英数で入力してください。"}
         
end
