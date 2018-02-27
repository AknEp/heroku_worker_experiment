class NotifyController < ApplicationController
  def ping
    @time = Time.zone.now.to_s
    NotifyJob.perform_later(@time)
  end

end
