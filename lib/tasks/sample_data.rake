namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin User",
                         email: "admin@admin.com",
                         password: "monkeys",
                         password_confirmation: "monkeys",
                         admin: true,
                         title: "CEO",
                         company: "Nike",
                         author: false)
    author = User.create!(name: "Author User",
                         email: "author@author.com",
                         password: "monkeys",
                         password_confirmation: "monkeys",
                         admin: false,
                         author: true,
                         title: "Author",
                         company: "Author")
    User.create!(name: "Example User",
                 email: "example@example.com",
                 password: "monkeys",
                 password_confirmation: "monkeys",
                 title: "Example",
                 company: "Example",
                 admin: false,
                 author: false)
  end
end