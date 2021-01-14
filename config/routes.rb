Rails.application.routes.draw do
  get '/school_classes', to: 'school_classes#index', as: 'school_classes'
  get '/school_classes/new', to: 'school_classes#new', as: 'new_school_class'
  post '/school_classes', to: 'school_classes#create'
  get '/school_classes/:id', to:'school_classes#show', as: 'school_class'
  get '/school_classes/:id/edit', to: 'school_classes#edit', as: 'edit_school_class'
  patch '/school_classes/:id', to: 'school_classes#update'
  delete '/school_classes/:id', to: 'school_classes#destroy'


  get '/students', to: 'students#index', as: 'students'
  get '/students/new', to: 'students#new', as: 'new_student'
  post '/students', to: 'students#create'
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  patch '/students/:id', to: 'students#update'
  get '/students/:id', to: 'students#show', as: 'student'
  delete '/students/:id', to: 'students#destroy'

  get '/student_classes', to: 'student_classes#index', as: 'student_classes'
  get '/student_classes/new', to: 'student_classes#new', as: 'new_student_class'
  post '/student_classes', to: 'student_classes#create'
  get '/student_classes/:id/edit', to: 'student_classes#edit', as: 'edit_student_class'
  patch '/student_classes/:id', to: 'student_classes#update'
  get '/student_classes/:id', to: 'student_classes#show', as: 'student_class'
  delete '/student_classes/:id', to: 'student_classes#destroy'
end
