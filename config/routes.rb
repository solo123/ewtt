Ewtt::Application.routes.draw do
  devise_for :employees, :skip => [:registrations]
    as :employee do
      get '/employees/edit' => 'devise/registrations#edit', :as => 'edit_employee_registration'
      put 'employees' => 'devise/registrations#update', :as => 'employee_registration'
    end
  devise_for :users, :controllers => {:passwords => 'TravelWebsite::passwords', :sessions => 'TravelWebsite::sessions'}

  mount TravelWebsite::Engine, :at => '/'
  mount TravelAdmin::Engine, :at => 'ewtt'
  match '/ewtt', :to => 'travel_admin/home#index', :as => :ewtt
end
