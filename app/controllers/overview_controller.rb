class OverviewController < ApplicationController
  def index
    @projects = Task.all
    @resources = Resource.all
    @cal = Time.new
  end
end
