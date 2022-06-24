class User < ApplicationRecord
    has_secure_password
    validates :first_name, presence: true, length: { minimum: 3 }
    validates :email, presence: true
    validates :password, length: { in: 5..10 }
end
