class SchoolClass < ApplicationRecord
    has_many :students
    has_many :student_classes, through: :students
end
