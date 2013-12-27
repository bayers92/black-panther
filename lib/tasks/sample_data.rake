namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Admin User",
                         email: "admin@admin.com",
                         password: "monkeys",
                         password_confirmation: "monkeys",
                         admin: true,
                         title: "CEO",
                         company: "Nike")
    author = User.create!(name: "Author User",
                         email: "author@author.com",
                         password: "monkeys",
                         password_confirmation: "monkeys",
                         admin: true,
                         title: "CEO",
                         company: "Nike")
    User.create!(name: "Example User",
                 email: "example@example.com",
                 password: "monkeys",
                 password_confirmation: "monkeys",
                 title: "CEO",
                 company: "Nike")
    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@example.com"
      password  = "password"
      title = "CEO"
      company = "Nike"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password,
                   title: title, company: company)
    end
    
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      title = "This & That"
      subtitle = "Wordly Wisdom"
      users.each { |user| user.microposts.create!(content: content, title: title, subtitle: subtitle) }
    end
  end
end