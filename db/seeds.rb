
User.create!(email: "test@test.com", name: "user", password: "asdfasdf", password_confirmation: "asdfasdf")

10.times do |blog|
    Blog.create!(
        title: "My Blog Post #{blog}",
        date: Date.today,
        body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    )
end

puts "10 blog posts created"
