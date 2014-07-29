GooglePlay::Application.routes.draw do
  resources :signin, :only => [ :index ] do
    collection do
      get :people
      get :calendar
      get :drive
      get :task_lists
      get :tasks
      get :activity_feed
      post :connect
      post :disconnect
      post :save_user
      put :complete_task
    end
  end

  root 'signin#index'

  match '/signin/delete_calendar_event/:id' => 'signin#delete_calendar_event', :via => :post
  match '/signin/update_calendar_event/:id' => 'signin#update_calendar_event', :via => :put
end
