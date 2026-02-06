#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please rus this script with root user access"
exit 1
fi
echo "Installing Nginx"
dnf install nginx -y 

if [ $?-ne 0 ]; then
echo "Installing Ngnix.... FAILURE"
exit1
echo "Installing Ngnix.... SUCCESS"
fi