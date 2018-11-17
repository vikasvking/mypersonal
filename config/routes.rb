Rails.application.routes.draw do

  get 'home/index'

  devise_for :users
  
  resources :pendings
  
  resources :currentaffairs
  resources :todos do |i|
    resources :tasks
  end


  resources :studies do |i|
    resources :chapters
  end

  root 'home#index'

  get 'createTaskrecord',action: :addTaskrecord,controller: 'taskrecords',as: 'createtaskrecord'

  get ':id',action: :donecurrent,controller: 'currentaffairs',as: 'donecurrentaffairs'

  get 'studies/:study_id/addRevision/:id',action: :addRevision,controller: 'chapters',as: 'addRevision'

  get 'studies/:todo_id/done/:id',action: :addRevision,controller: 'tasks',as: 'done'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
