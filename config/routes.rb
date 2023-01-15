Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "example/di", to: "example#di_example"
  get "example/no_di", to: "example#no_di_example"
end
