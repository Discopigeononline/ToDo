class TasksController < ApplicationController
  before_action :set_task, only: %i[show update destroy toggle_done]

  def index
    @tasks = Task.all
  end

  def show
  end

  def create
    @task = Task.new(task_params)
    redirect_to task_path(@task) if @task.save
  end

  def update
    @task.update(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    params.require(:task).permit(:title, :description)
  end
end
