
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def category_name
    class_name = self.class.name
    return "No Category" unless class_name.constantize.reflect_on_association(:category)

    if self.category.nil?
      "None"
    else
      self.category.name
    end
  end

end
