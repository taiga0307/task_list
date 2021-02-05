Rails.application.routes.draw do

  devise_scope :customer do
    root "customers/sessions#new"
  end

  devise_for :customers, controllers: {
    sessions:      'customers/sessions', # 会員ログイン画面
    passwords:     'customers/passwords',
    registrations: 'customers/registrations' # 会員登録画面、会員パスワード編集画面
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :events

  resources :tasks, only: [:new, :edit, :create, :destroy]
end
