class User < ApplicationRecord
  has_many :fridges, dependent: :destroy
end
