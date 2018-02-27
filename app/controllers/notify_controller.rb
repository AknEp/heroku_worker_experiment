class NotifyController < ApplicationController
  def create
    @notification = Notification.new
    @notification.save!
    NotifyJob.perform_later
  end

end
