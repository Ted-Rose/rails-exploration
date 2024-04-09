3. 
2. `bin/rails generate model Article title:string body:text`
    - `bin/rails db:migrate`
    - `article = Article.new(title: "Hello Rails", body: "I am on Rails!")`
    - `article.save`
    - `article`
1. `bin/rails generate controller Articles index --skip-routes`
    - Created ArticlesController and its index action
    - Now visit http://localhost:3000/articles, and see our text displayed!