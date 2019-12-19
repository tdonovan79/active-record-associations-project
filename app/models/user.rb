class User < ActiveRecord::Base
    has_many :checkouts
end