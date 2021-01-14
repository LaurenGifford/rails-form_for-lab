class Student < ActiveRecord::Base

  has_many :student_classes
  has_many :school_classes, through: :student_classes
  
  def to_s
    self.first_name + " " + self.last_name
  end

  def born
    self.created_at.strftime("%B, %d, %Y")
  end
end