class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.delete_old
    @old_invoices = Student.where("students.name"=>'perumal')
    @old_invoices.delete_all
end
end
