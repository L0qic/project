class Task < ApplicationRecord
  has_many :assignments
  has_many :milestones

  def is_qa_day (date)
    qa_day = false
    if milestones
      milestones.each do |milestone|
        if (date.sunday? or date.saturday?)
          milestone.qa_days += 1
          return qa_day
        end
        qa_day = true if (date > milestone.dev_end_date) && (date <= milestone.dev_end_date + milestone.qa_days.days)
      end
    end
    else
      qa_day = true if (self.start.beginning_of_day <= date) && (self.end.end_of_day >= date)
    return qa_day
  end

  def all_days_past
    t = Time.new
    past = true
    milestones.each do |m|
      if (m.dev_end_date + m.qa_days) > t
        past = false
      end
    end
    if self.end.end_of_day >= t
      past = false
    end
    return past
  end

end
