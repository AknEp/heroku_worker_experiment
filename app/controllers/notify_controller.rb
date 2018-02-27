class NotifyController < ApplicationController
  def ping
    @notification = Notification.new
    @notification.save!
    NotifyJob.perform_later
  end

end
