Rails.application.routes.draw do
root 'forum_threads#index'

  devise_for :users

  resources :forum_threads do
    resources :forum_posts, module: :forum_threads
  end
end
