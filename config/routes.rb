BasicStarterTemplate::Application.routes.draw do
  resources :programme_exercises

  resources :supersets

  resources :superset_exercises

  resources :programme_types

  resources :programmes do
    member do
      get :add_exercise_to
      get :remove_exercise_from
    end
  end

  resources :videos

  resources :body_parts

  resources :exercises

  devise_for :users
  root 'home#index'
end
