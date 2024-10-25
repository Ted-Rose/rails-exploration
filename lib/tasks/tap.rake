namespace :tap do
  desc "Tap into each scope and print the size of each"
  task scopes: :environment do
    Article
      .published.tap { |articles| puts "Published articles: #{articles.size}" }
      .recent.tap { |articles| puts "Recent articles: #{articles.size}" }
      .long_body.tap { |articles| puts "Long body articles: #{articles.size}" }
  end

  desc "Tap into article and modify it on the fly"
  task article: :environment do
    article = Article.new(title: "Debugging with Tap", body: "Exploring the tap method in Ruby.")
    article.tap do |a|
      puts "Initial article: \n#{a.inspect}"
      a.status = "public"
      puts "After setting status: \n#{a.inspect}"
    end.tap do |a|
      if a.save
        puts "Article saved successfully!"
      else
        puts "Failed to save article: \n#{a.errors.full_messages.join(', ')}"
      end
    end
  end
end