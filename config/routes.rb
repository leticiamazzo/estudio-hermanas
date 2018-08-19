Rails.application.routes.draw do
    get 'produto/index'
    resources :bordados
end