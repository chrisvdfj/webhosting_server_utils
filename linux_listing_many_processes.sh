mypid=`sysctl kernel.pid_max | cut -d " " -f3`; for rkit in `seq 1 $mypid`; do \
test -f /proc/$rkit/cmdline && (echo -n "[$rkit] "; strings /proc/$rkit/cmdline; echo) >> /root/processes.txt; done
