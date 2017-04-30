class TasksController < ApplicationController
  before_action :authenticate_user!

  def show
    @task = Task.find(params[:id])
  end

  def create
     @task = current_user.tasks.create(task_params)
       redirect_to  @task.package
  end

  def user_tasks
    @tasks = current_user.tasks
  end


   private
    def task_params
      params.require(:task).permit(:package_id, :user_id, :package_price, :package_distance, :package_delivery_time)
     end

end
