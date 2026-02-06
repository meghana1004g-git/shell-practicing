#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]; then
echo "Please rus this script with root user access"
fi
echo "Installing Nginx"
dnf install nginx -y