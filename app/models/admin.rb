class Admin < ApplicationRecord
    has_secure_password
    has_one :admin
    validates :first_name, presence: true, length: { minimum: 3 }
    validates :email, presence: true
    validates :password, length: { in: 5..10 }
end
