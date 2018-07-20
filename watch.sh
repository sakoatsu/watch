PROC=$1
LOG='/tmp/watch.log'
TARGET='pid=,comm=,rss='

while true;
do
    date "+%Y/%m/%d %H:%M:%S"| tr '\n' ' ' >> $LOG
    ps -p $PROC -o $TARGET | tr '\n' ' ' >> $LOG
    echo ' ' >> $LOG
    sleep 1
done