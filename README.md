<h>Welcome to Cloudboost</h>

This repo containers standalone dokcerfile to create 3 images to deploy glue app


<strong>How user</strong>

##First You need to build a image from dockerfile by following commands

First goto the directory where containes dockefiles the enter the command as below

docker build -t "image_tag_name" -f "dockerfilename" . 

after the succesfull build you have to create container from the image.
please pass the appropiat values such as Database Host, username and password, webaddress.
Please follow the bollow format to pass environment variables.

docker run -itd -p "desired Port to publish" --name "container name " -e "variablename"="value" "imagestagname"

e.g : building image with nginx webserver ip

docker run -itd -p 80:80 --name glue-frontend -e SERVER_NAME=glue.cloudboost.ml teamcloudboost/glue-independent:frontend



Availble environments variables are given below

For DATABASE Container ( Database server will configured as per variable values) :

MYSQL_ROOT_PASSWORD [DATABASE ROOT PASSWORD]
APP_DB [DB NAME FOR GLUE APP]
APP_DB_USER [DB_USERNAME]
APP_DB_PASS [DB_PASSWORD]



For Frontend Container :

SERVER_NAME [NGINX SERVER NAME]
APP_DB [DATABASE HOST FOR GLUE APP]
APP_DB_USER [DATABASE USERNAME]
APP_DB_PASS [DATABASE PASSWORD]
DB_HOST [DATABASE SERVER IP]
BACK_HOST [BACKEND SERVER IP]

For Frontend Container :

APP_DB [DATABASE HOST FOR GLUE APP]
APP_DB_USER [DATABASE USERNAME]
APP_DB_PASS [DATABASE PASSWORD]


Images are available at Dockerhub

Frontend : teamcloudboost/glue-independent:frontend
Backend  : teamcloudboost/glue-independent:Backend
Database : teamcloudboost/glue-independent:Database







