class UserX < ApplicationRecord
    has_many :giftcoupons

    has_secure_password

    validates :username, presence: true
    validates :email, presence: true, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "must be a valid email address" }
end
