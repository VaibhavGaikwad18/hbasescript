#!/bin/bash

# Start HBase shell and run commands
echo "Starting HBase shell commands execution..."

hbase shell <<EOF
status
version 
table_help
whoami
create 'employee', 'Name', 'ID', 'Designation', 'Salary', 'Department'
list
disable 'employee'
scan 'employee'
is_disable 'employee'
disable_all 'e.*'
enable 'employee'
is_enabled 'employee'
create 'student', 'name', 'age', 'course'
put 'student', 'shubham', 'name:fullname', 'shubham singh'
put 'student', 'shubham', 'name:oldname', 'S rs'
put 'student', 'shubham', 'age:presentage', '22'
put 'student', 'shubham', 'course:pursuing', 'Hadoop'
put 'student', 'deepak', 'name:fullname', 'deepak padhi'
put 'student', 'deepak', 'age:presentage', '23'
put 'student', 'deepak', 'course:pursuing', 'Java'
put 'student', 'pratham', 'name:fullname', 'pratham misal'
put 'student', 'pratham', 'age:presentage', '21'
put 'student', 'pratham', 'course:pursuing', 'python'
get 'student', 'shubham'
get 'student', 'deepak'
get 'student', 'pratham'
get 'student', 'shubham', 'age'
get 'student', 'deepak', 'course'
get 'student', 'pratham', 'age', 'course'
get 'student', 'shubham', 'age', 'course'
get 'student', 'shubham', 'name'
scan 'student'
count 'student'
alter 'student', NAME=>'name', VERSIONS=>5
put 'student', 'pratham', 'name:fullname', 'pratham ankush misal'
scan 'student'
delete 'student', 'pratham', 'age:presentage'
EOF

echo "HBase commands executed successfully."
