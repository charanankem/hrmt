class EmployeeDetail < ApplicationRecord
  belongs_to :employee, optional: true
  belongs_to :project, optional: true
  belongs_to :designation, optional: true
end
