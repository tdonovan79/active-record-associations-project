class Checkout < ActiveRecord::Base
    belongs_to :user
    belongs_to :book

    after_initilize init
    #set default values return_status = false due_date = 12 weeks from now
    def init
        self.due_date = Date.today + 14
    end
end