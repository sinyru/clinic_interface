# frozen_string_literal: true
Rails.application.routes.draw do

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :patients, except: [:new, :edit]
  resources :doctors, except: [:new, :edit]
  resources :appointments, except: [:new, :edit]
  resources :drugs, except: [:new, :edit]
  resources :prescriptions, except: [:new, :edit]
end
