Rails.application.routes.draw do
  devise_for :users
  resources :posts do # создает семь следующих маршрутов
  # GET '/posts' => 'posts#index' 	отображает список всех постов
  # GET '/posts/new' => 'posts#new' возвращает форму HTML для создания нового поста
  # POST '/posts' => 'posts#create' 	создает новый пост
  # GET '/posts/:id' => 'posts#show' 	отображает определенный пост
  # GET '/posts/:id/edit' => 'posts#edit' 	возвращает форму HTML для редактирования поста
  # PATCH/PUT '/posts/:id' => 'posts#update' 	обновляет определенный пост
  # DELETE '/posts/:id' => 'posts#destroy' 	удаляет определенный пост
    member do
      get "like", to: "posts#upvote" # 'posts/[id]/like' => "posts#upvote"
      get "dislike", to: "posts#downvote"
    end
    resources :comments
  end
  root 'posts#index'
end
