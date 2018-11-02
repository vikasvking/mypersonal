Rails.application.routes.draw do
  resources :studies do |i|
    resources :chapters
  end

  root 'studies#index'
  get 'studies/:study_id/addRevision/:id',action: :addRevision,controller: 'chapters',as: 'addRevision'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
