class User < ApplicationRecord
    has_secure_password
    has_many :game_records
    validates_uniquness_of :username
end
