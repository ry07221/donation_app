class Donation < ApplicationRecord

  belongs_to :uesr

  validates :price, format: {with: /\A[0-9]+\z/, message: "半角数字で入力してください"}

end

