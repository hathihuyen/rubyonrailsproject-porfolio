Rails.application.routes.draw do
  resources :comments
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :portfolios, except: [:show] do 
    put :sort, on: :collection
  end
  get 'angular-items', to: 'portfolios#angular'
  get 'ruby-on-rails-items', to: 'portfolios#rubyonrails'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  #get 'pages/home'
  root to: 'pages#home'
  #get 'pages/about'
  get 'about-me', to: 'pages#about'
  #get 'pages/contact'
  get 'contact', to: 'pages#contact'
  get 'tech-news', to: 'pages#tech_news'

  resources :blogs do
    member do
      get :toggle_status1
    end
  end

  root to: 'pages#home'
  
end
