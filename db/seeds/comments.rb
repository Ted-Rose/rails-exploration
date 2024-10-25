puts "Seeding comments..."

Article.all.each do |article|
  article.comments.create!([
    { body: "Great article!", status: "public" },
    { body: "Very informative.", status: "public" },
    { body: "I learned a lot from this.", status: "public" },
    { body: "Thanks for sharing!", status: "public" },
    { body: "Looking forward to more.", status: "public" }
  ])
end