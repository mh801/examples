# README
Example/Skills Clinic Application

This is a simple application that demonstrates the use of various design patterns, and is used for skills clinic examples:
This repo will grow over time, and will be used to demonstrate various design patterns and **Atlas Apollo** team best practices.

### **Basic Info and Setup**
* Ruby version: 2.7.7

* bundle install
* bin/rails db:reset
* bin/rails s -p3033

### **Included in this repo are the following examples:**
- Dependency Injection

### ***Example Details:***
#### -Dependency Injection-
Reasons for Dependency Injection:
- Make code more testable
  - Allows for easier mocking
  - Allows for easier stubbing
  - Allows for easier swapping of dependencies
    - if versioning changes and only some classes use the newer version, provided the signature remains the same, the version can be injected.
  - Allows for easier testing of edge cases
  - Allows for easier testing of failure cases
  - Prevents the need to use `allow_any_instance_of` in tests
  - Makes tests isolated and independent, we only want to tet the code we are testing, not the code it depends on
- Make code more flexible
- Easily swap out dependencies
- Make code more maintainable
  - If you need to change a dependency, you only need to change it in one place
  - This prevents bugs from being introduced when you forget to change a dependency in multiple places
  - This also makes it easier to see what dependencies are being used in a class
- Make code more reusable

Reasons to avoid Dependency Injection:
- It can make code more complex
  -  Without DI, you do not have to know what variables the dependencies are assigned to
- It can make code more difficult to understand
  - Without a good understanding of how DI works, it can be difficult to understand what is happening
- It can make code more difficult to search for classes and used methods
  - ie. If you are looking for where a method is used, you will need to search for the method name, and the variable name it is assigned to 

Simple DI vs No DI testing example

 Comments in the tests to highlight some of the differences
- spec/domains/di_service_spec.rb
- spec/domains/no_di_service_spec.rb
    - http://localhost:3033/example/di
    - http://localhost:3033/example/no_di
* bundle exec rspec
