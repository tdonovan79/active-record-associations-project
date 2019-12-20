class Book < ActiveRecord::Base
    has_many :checkouts
    belongs_to :author
    belongs_to :category
end