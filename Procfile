web: bin/rails server -p $PORT -e $RAILS_ENV
resque: env LOGGING=1 QUEUE=* bin/rake resque:work
