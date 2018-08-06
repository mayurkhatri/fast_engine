Fastengine::Engine.routes.draw do
  resources :particles
  root :to => "particles#index"
end
