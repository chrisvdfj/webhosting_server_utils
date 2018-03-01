netstat -ntu | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | wc -l
