Enae::Application.routes.draw do
  get "users/new"
  match "logout", :controller => "users", :action => 'logout'
  root :to => "home#index"
  resources :students, :path => 'estudiantes'
  resources :courses, :path => 'cursos' do 
    resources :asignatures, :path => 'asignaturas'
  end  
  match "/callback", :controller => "facebook", :action => 'callback', :method => :any
end
