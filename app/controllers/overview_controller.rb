class OverviewController < ApplicationController
  def index
    @projects = Task.all
    @resources = Resource.all
    @cal = Time.new
  end
end

private
  def date_cell_html(number, color, text="")
    html = "<table><tr><td class='number'><span class='date_display'>#{number}</span></td></tr>"
    html += "<tr><td bgcolor='#{color}' class='date_cell'><span class='tooltip'>#{text}</span></td></tr>"
    html += "</table>"
  end
