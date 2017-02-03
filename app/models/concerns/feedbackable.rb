module Feedbackable

  extend ActiveSupport::Concern

  # Set model as feedbackable

  included do
    has_many :feedbacks, as: :feedbackable
  end

  # Get the average attribute value for a given feedbackable object
  # Validates attribute before running ActiveRecord query

  def attribute_average(attribute)

    raise ArgumentError unless Feedback.has_attribute?(attribute.to_sym)

    Feedback.where(
      "feedbackable_id = #{self.id} and
       feedbackable_type = '#{self.class.name}'"
    ).average(attribute.to_sym).to_f.round(1)

    fail

  end

end
