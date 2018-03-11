#/bin/bash

#UNICORN=/usr/local/ruby/bin/unicorn_rails         

_pid=`cat /opt/work/data-analysis/tmp/pids/unicorn_data.pid`; sudo kill -USR2 $_pid; sudo kill -QUIT $_pid; ps -ef | grep unicorn | grep master
#while true; do
#  sleep 10
#
#  num=`ps -ef | grep unicorn | grep master | grep $_pid | wc -l`
#
#  if (( num > 1 )) ; then
#    kill -QUIT $PID
#    break
#  fi
#done

#$UNICORN -c /opt/work/data-analysis/config/unicorn.rb  -D -E development
#$UNICORN -c /opt/work/data-analysis/config/unicorn.rb  -D -E production

#bundle exec unicorn_rails -c /opt/work/data-analysis/config/unicorn.rb -D -E production

#bundle exec unicorn_rails -c /opt/work/data-analysis/config/unicorn.rb -D -E development





