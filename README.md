# README

Simple DI vs No DI testing example

 Comments in the tests to highlight differences
- spec/domains/di_service_spec.rb
- spec/domains/no_di_service_spec.rb

* Ruby version: 2.7.7

* bin/rails db:create db:migrate db:seed
* bin/rails s -p3033
    - http://localhost:3033/example/di
    - http://localhost:3033/example/no_di
* bundle exec rspec
