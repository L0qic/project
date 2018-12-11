class OverviewController < ApplicationController
  def index
    @projects = Task.all
    @cal = Time.new
  end
end
