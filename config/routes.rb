FarkleRails::Application.routes.draw do
  
  root to: 'common_pages#home'

  match '/about',   to: 'common_pages#about'
  match '/contact', to: 'common_pages#contact'
  
end
