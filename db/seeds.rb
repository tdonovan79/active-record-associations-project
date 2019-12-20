50.times do
    Author.create(name: Faker::Book.author)
end

50.times do
    Category.create(name: Faker::Book.genre)
end

50.times do
    Book.create(title: Faker::Book.title, 
        author: Author.all.sample,
        category: Category.all.sample)
end

50.times do
    User.create(name: Faker::Name.name_with_middle)
end