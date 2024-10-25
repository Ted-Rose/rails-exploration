puts "Seeding articles..."

Article.create!([
  { title: "First Article", body: "This is the body of the first article.", status: "public" },
  { title: "Second Article", body: "This is the body of the second article.", status: "private" },
  { title: "Third Article", body: "This is the body of the third article.", status: "archived" },
  { title: "Fourth Article", body: "This is the body of the fourth article.", status: "public" },
  { title: "Fifth Article", body: "This is the body of the fifth article.", status: "private" },
  { title: "Sixth Article", body: "This is the body of the sixth article. It is longer then previous five articles.", status: "public" },
])