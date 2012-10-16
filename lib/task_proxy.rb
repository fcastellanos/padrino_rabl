class TaskProxy < Weary::Client
  get :index, "http://localhost:3000/tasks"

  get :show, "http://localhost:3000/tasks/show/{id}" do |resource|
    resource.required :id
  end

  post :create, 'http://localhost:3000/tasks/create/' do |resource|
    resource.required :title, :user_id, :time_due

    resource.optional :description
  end
end
