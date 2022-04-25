class Designation < ApplicationRecord
  has_many: :employee, through: => :employee_details
end
