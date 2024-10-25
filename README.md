# README
My first rails app made to learn Ruby on Rails by following official [guide](https://guides.rubyonrails.org/getting_started.html).

Also contains other Ruby and Rails tests.

# Database setup
- Run pg container exposing it on port 5436 on host machine:
```
docker run --name rails-tests -p 5436:5432 -e POSTGRES_PASSWORD=password postgres
```

- Next time to start the container:
```
docker start rails-tests
```

- `rails db:create`
- `rails db:migrate`
- `rails db:seed`
