class MilestonesController < ApplicationController
  before_action :set_task, only: [:new, :create]
  before_action :set_milestone, only: [:update, :show, :destroy]

  def new
    @milestone = Milestone.new(task_id: params["task_id"])
  end

  def create
    parms = milestone_params
    parms["task_id"] = @task.id
    @milestone = Milestone.new(parms)

    respond_to do |format|
      if @milestone.save
        format.html { redirect_to @task, notice: 'Milestone was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

end
private

def set_task
  puts "Tsk: ::: #{params["task_id"]}"
  @task = Task.find(params["task_id"])
end

def set_milestone
  @milestone = Milestone.find(params["id"])
end

def milestone_params
  params.require(:milestone).permit(:desc, :dev_end_date, :qa_days)
end
