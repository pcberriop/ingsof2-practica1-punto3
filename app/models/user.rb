class User < ApplicationRecord
   validates :lastname, presence:rue
   validates :email, uniqueness: true, presence: true
end
