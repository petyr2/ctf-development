#!/bin/bash
echo "--------------------------------------------"
echo "   WordPress Localhost Services (like ps)"
echo "--------------------------------------------"
printf "%-10s %-15s %-10s %-15s\n" "PID" "SERVICE" "USER" "ELAPSED"

# Apache or Nginx (Web server)
ps -eo pid,comm,user,etime | grep -E "apache2|nginx" | grep -v grep | \
while read pid service user etime; do
    printf "%-10s %-15s %-10s %-15s\n" "$pid" "$service" "$user" "$etime"
done

# PHP-FPM (if used)
ps -eo pid,comm,user,etime | grep php-fpm | grep -v grep | \
while read pid service user etime; do
    printf "%-10s %-15s %-10s %-15s\n" "$pid" "$service" "$user" "$etime"
done

# MySQL / MariaDB
ps -eo pid,comm,user,etime | grep -E "mysqld" | grep -v grep | \
while read pid service user etime; do
    printf "%-10s %-15s %-10s %-15s\n" "$pid" "$service" "$user" "$etime"
done
