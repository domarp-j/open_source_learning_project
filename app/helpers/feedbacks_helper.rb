
module FeedbacksHelper

  def display_time(feedbackable)
    completion_time = feedbackable.attribute_average(:completion_minutes)

    return "Time to Complete\nNot Yet Rated" if feedbackable.feedbacks.empty?

    if completion_time < 60
      "~#{completion_time} mins\nAverage Completion Time"
    else
      completion_time /= 60
      "~#{completion_time} hrs\nAverage Completion Time"
    end
  end
end
