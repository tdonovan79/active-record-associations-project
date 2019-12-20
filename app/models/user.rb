class User < ActiveRecord::Base
    has_many :checkouts

    #checkout a book
    def checkout_book(book, date)
        checkout = Checkout.create(user: self, book: book, due_date: date)
        checkout.return_status = false
    end
    #return a book
    def return_book(book)
        checkout = Checkout.all.find{|checkout| checkout.book == book}
        checkout.return_status = true
    end

end