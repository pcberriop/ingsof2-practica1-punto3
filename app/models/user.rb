class User < ApplicationRecord
   validates :lastname, presence: true
   validates :email, uniqueness: true, presence: true
end
