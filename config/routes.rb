Ewtt::Application.routes.draw do
  devise_for :employees, :skip => [:registrations]
    as :employee do
      get '/employees/edit' => 'devise/registrations#edit', :as => 'edit_employee_registration'
      put 'employees' => 'devise/registrations#update', :as => 'employee_registration'
    end
  #devise_for :users, :controllers => {:passwords => 'TravelWebsite::passwords', :sessions => 'TravelWebsite::sessions'}
  devise_for :users

  mount TravelWebsite::Engine, :at => '/'
  mount TravelAdmin::Engine, :at => 'ewtt'
  get :ewtt, :to => 'travel_admin/home#index'
end
