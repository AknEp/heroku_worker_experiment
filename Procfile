web: bin/rails server -p $PORT -e $RAILS_ENV
worker: env LOGGING=1 QUEUE=* bin/rake resque:work
