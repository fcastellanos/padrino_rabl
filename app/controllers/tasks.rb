Tasks.controllers :tasks do
  get :index do
    @tasks = Task.all
    render 'tasks/index'
  end

  get :show, :with => :id do
    @task = Task.find(params[:id].to_i)

    render 'tasks/show'
  end

  post :create do
    @task = Task.create(params)

    render 'tasks/create'
  end
end
