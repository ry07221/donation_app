class User < ApplicationRecord
  
  has_one :address, dependent: :destroy
  has_one :donation, dependent: :destroy

end

