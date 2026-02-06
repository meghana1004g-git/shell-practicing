
#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
echo "Please run this script with root user access"
exit 1
fi

VALIDATE(){
    if  [ $? -ne 0 ]; then
    echo "$2 .... FAILURE"
    exit 1
    else
    echo "$2 .... SUCCESS"
    fi

}

dnf install ngnix -y
VALIDATE $? "Installing nginx"

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install nodejs -y
VALIDATE $? "INstalling nodejs"