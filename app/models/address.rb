class Address < ApplicationRecord

  belongs_to :user

  validates :prefecture, :postal_code, presence: true
  validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, messgage: "「-」も入力してください"}
  
end
