class Task < ApplicationRecord
  has_many :assignments
  has_many :milestones

  def is_qa_day (date)
    puts "Checking #{date}"
    qa_day = false
    if milestones
      milestones.each do |milestone|
        qa_day = true if (date > milestone.dev_end_date) && (date <= milestone.dev_end_date + milestone.qa_days.days)
      end
    end
    else
      qa_day = true if (self.start.beginning_of_day <= date) && (self.end.end_of_day >= date)
    return qa_day
  end

end
