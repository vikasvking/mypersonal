Rails.application.routes.draw do

  resources :currentaffairs
  resources :todos do |i|
    resources :tasks
  end


  resources :studies do |i|
    resources :chapters
  end

  root 'studies#index'


  get 'studies/:study_id/addRevision/:id',action: :addRevision,controller: 'chapters',as: 'addRevision'

  get 'studies/:todo_id/done/:id',action: :addRevision,controller: 'tasks',as: 'done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
