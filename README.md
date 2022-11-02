<h>Welcome to Cloudboost</h>

This repo containers standalone dokcerfile to create 3 images to deploy glue app


<strong>How to use</strong>

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

MYSQL_ROOT_PASSWORD [DATABASE ROOT PASSWORD]</br>
APP_DB [DB NAME FOR GLUE APP]</br>
APP_DB_USER [DB_USERNAME]</br>
APP_DB_PASS [DB_PASSWORD]</br>

docker run -itd -p 3306:3306 --name glue-database teamcloudboost/glue-independent:database
==========================================================================================

For Frontend Container :

SERVER_NAME [NGINX SERVER NAME]</br>
APP_DB [DATABASE HOST FOR GLUE APP]</br>
APP_DB_USER [DATABASE USERNAME]</br>
APP_DB_PASS [DATABASE PASSWORD]</br>
DB_HOST [DATABASE SERVER IP]</br>
BACK_HOST [BACKEND SERVER IP]</br>

 docker run -itd -p 80:80 --name glue-frontend -e  APP_DB=laravel -e APP_DB_USER=laravel -e APP_DB_PASS=laravel -e DB_HOST=192.168.0.5  -e SERVER_NAME=192.168.0.5 -e BACK_HOST=192.168.0.5 teamcloudboost/glue-independent:frontend
======================================================================================================================================================================
For Backend Container :

DB_HOST [DATABASE HOST/SERVER IP]</br>
APP_DB [DATABASE NAME FOR GLUE APP]</br>
APP_DB_USER [DATABASE USERNAME]</br>
APP_DB_PASS [DATABASE PASSWORD]</br>

docker run -itd -p 9000:9000 --name glue-backend -e  APP_DB=laravel -e APP_DB_USER=laravel -e APP_DB_PASS=laravel -e DB_HOST=192.168.0.5  teamcloudboost/glue-independent:backend
=======================================================================================================================================================================

Images are available at Dockerhub

Frontend : teamcloudboost/glue-independent:frontend</br>
Backend  : teamcloudboost/glue-independent:Backend</br>
Database : teamcloudboost/glue-independent:Database</br>







