# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(email: 'boy@friend.com',
            password: 'password',
            name: 'Boyfriend',
            role: User.roles[:admin])

User.create(email: 'john@doe.com',
            password: 'password',
            password_confirmation: 'password',
            name: 'John Doe')
            
elapsed = Benchmark.measure do
    posts = []
    100.times do |x|
        puts "Creating post #{x}"
        post = Post.new(title: "Title #{x}",
                            body: "Body #{x} Words go here",
                            user: User.first)
        
        2.times do |y|
            puts "Creating post #{y} for post #{x}"
            post.comments.build(body: "Comment #{y}",
                            user: User.second)
        end
        posts.push(post)
    end
    Post.import(posts, recursive: true)
end



puts "Elapsed time is #{elapsed.real} seconds"