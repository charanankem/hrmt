Rails.application.routes.draw do
  
  devise_for :employees
  get 'employeedetails', to: "employee_details#new"
  post 'employeedetails', to: "employee_details#create"

  get 'zensark', to: 'zensark#home'
  
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#home'
end
