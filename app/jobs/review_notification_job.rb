class ReviewNotificationJob < ApplicationJob
  queue_as :default

  def perform(review)
    Rails.logger.debug "Thank you your review - #{review.comment}"
  end
end
