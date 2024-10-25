puts "Clearing existing data..."
Comment.destroy_all
Article.destroy_all

puts "Loading seed files..."
Dir[Rails.root.join('db/seeds/*.rb')].sort.each do |file|
  puts "Processing #{file.split('/').last}..."
  require file
end

puts "Seeding completed."