web: bin/rails server -p $PORT -e $RAILS_ENV
worker: LOGGING=1 QUEUE=* bin/rake resque:work
