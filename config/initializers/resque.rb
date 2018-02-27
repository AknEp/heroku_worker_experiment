if defined?(Resque)
  begin
    Resque.redis = ENV['REDIS_URL'] || 'localhost:6379'
  rescue => e
    puts e
  end
end
