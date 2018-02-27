if defined?(Resque)
  Resque.redis = ENV['REDIS_URL'] || 'localhost:6379'
end
