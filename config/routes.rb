Rails.application.routes.draw do
  get '/schoolClasses', to: 'school_classes#index', as: 'school_classes'
  get '/schoolClasses/new', to: 'school_classes#new'
  post '/schoolClasses', to: 'school_classes#create'
  get '/schoolClasses/:id', to:'school_classes#show', as: 'school_class'
  get '/schoolClasses/:id/edit', to: 'school_classes#edit', as: 'edit_school_class'
  patch '/schoolClasses/:id', to: 'school_classes#update'
  delete '/schoolClasses/:id', to: 'school_classes#destroy'


  get '/students', to: 'students#index', as: 'students'
  get '/students/new', to: 'students#new'
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: 'student'
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  patch '/students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#destroy'

end
