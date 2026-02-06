#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please rus this script with root user access"
exit 1
fi
echo "Installing Nginx"
dnf install nginx -y 

if [ $? -ne 0 ]; then
echo "Installing Ngnix ..... FAILURE"
exit 1

echo "Installing Ngnix ..... SUCCESS"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
echo "Installing mysql ..... FAILURE"   
exit 1
echo "Installing mysql .....SUCCESS"
fi

dnf install nodejs -y

if [ $? -ne 0 ]; then
echo "Installing nodejs ..... FAILURE"
exit 1
echo "Installing nodejs ..... SUCCESS"
fi
