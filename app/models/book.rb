class Book < ActiveRecord::Base
    has_many :catagories
    has_many :checkouts
    belongs_to :author
end