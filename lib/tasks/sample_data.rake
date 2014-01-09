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
                         title: "CEO",
                         company: "Nike")
    User.create!(name: "Example User",
                 email: "example@example.com",
                 password: "monkeys",
                 password_confirmation: "monkeys",
                 title: "CEO",
                 company: "Nike",
                 admin: false,
                 author: false)
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
                   title: title, company: company,
                   admin: false, author: false)
    end
    
    users = User.all(limit: 6)
    50.times do
      content = Faker::Lorem.sentence(5)
      title = "This and That"
      subtitle = "Wordly Wisdom"
      author = "Franky Frank"
      job = "CEO"
      company = "Nike"
      publish = true
      users.each { |user| user.microposts.create!(content: content, title: title, subtitle: subtitle, author: author, job: job, company: company, publish: publish) }
    end
  end
end